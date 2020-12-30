Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 245CF2E7A32
	for <lists+blinux-list@lfdr.de>; Wed, 30 Dec 2020 16:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609341101;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R4+KXoKN12dzMnHVFROxtq6OS9jeW7AwZ8jXzum7Tpg=;
	b=Fgm4hvQth2T+F4JUFSTyxaIli9j9jnfIJj9LX/8zuGaFeeSS9moCn1+kGjLO/vanI9R1s+
	rP9kh7Hh2Jd5l2NTm/sU6/S4KV7gav0FbU36DF6R4M12sblx4YettsUAj6vvNyPpVQHLQm
	A9SamNOPKeutf68w7943XkzJgnoAxcQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-p9JHiRIsNM2SS0GpOT_FCw-1; Wed, 30 Dec 2020 10:11:38 -0500
X-MC-Unique: p9JHiRIsNM2SS0GpOT_FCw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68172107ACF5;
	Wed, 30 Dec 2020 15:11:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A54C10016FE;
	Wed, 30 Dec 2020 15:11:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF7411809C9F;
	Wed, 30 Dec 2020 15:11:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BUF89m5001420 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Dec 2020 10:08:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 716382026D76; Wed, 30 Dec 2020 15:08:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C6132026D49
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 15:08:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFEAE858280
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 15:08:06 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-504-gypJhwvUPbiMoX55VY666w-1; Wed, 30 Dec 2020 10:08:02 -0500
X-MC-Unique: gypJhwvUPbiMoX55VY666w-1
Received: by mail-ot1-f54.google.com with SMTP id i6so15601845otr.2
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 07:08:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=lqidJgJBl81q9zix+1dNwch4RxKx6c1R3KiznH8sIGQ=;
	b=XEO8nDb7RfIezHJldDrAzGaU+a/J28AlASFFtpiAHwb9UAsB07/D4ptaWq1h1wlUm5
	9RHdmqlKBMBw1kb4VybHDQceEKm1s0ecB8u2ynAcdM8QA1fxUTMV8Xi2jbVTsu6H8OTP
	lEYaGuWbGIyN/OriAk/sV7CoBzqAbkdVgAsbfCdl+/JbiWXXr+mE3EU9w8+LvStXws62
	VJ+9hGcwnRuGSwjFqSEoAQSROQ4xOsS53ZYdP04OsR9F7yYpHLit2Pc937kcLoQwcAp7
	2jLtWU6QKu/3Rybv0ZwdZfuUOqvyvk7KuLvlGqeLuf5lVg9a1NcJ144O86l1p71rrNGr
	DHhw==
X-Gm-Message-State: AOAM531ED3Fx/Z9+t0DmaYFdshhXAGZGslb6JMU4OLBkfi9UKO0pyoyl
	0wOfOJUU6OKcO0dAS/Bmtry6nn+BwEo=
X-Google-Smtp-Source: ABdhPJzTidNL27T6IqFGGBy4rs/7xaLUdVf+4PuyomE6hbBKyIactvGFwKzX4HLDE7OuR1FCnlK5Fw==
X-Received: by 2002:a9d:5c8b:: with SMTP id a11mr38556679oti.126.1609340881269;
	Wed, 30 Dec 2020 07:08:01 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:c1c4:7be4:d31e:ea06?
	([2601:3c2:8200:9360:c1c4:7be4:d31e:ea06])
	by smtp.gmail.com with ESMTPSA id
	w138sm10322992oie.44.2020.12.30.07.07.59 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Dec 2020 07:08:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: Re: No Monitor Environment
Date: Wed, 30 Dec 2020 09:07:58 -0600
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
	<alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
	<9c34ebe2-14fa-d2b1-360b-e5a8e1205347@kellford.com>
	<a35cd07a-9e1f-97bf-c7a7-d8f06c9a778f@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <a35cd07a-9e1f-97bf-c7a7-d8f06c9a778f@gmail.com>
Message-Id: <C4F90F85-AD5C-476C-9AE2-B77B968E52CA@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0BUF89m5001420
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have found that Ubuntu and Fedora seem to need a monitor, while arch linux and also slint seem not to need one.


> On Dec 29, 2020, at 2:54 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Best I've been able to find is a monitor dummy plug. I can't seem to find a single plug for some reason, but I did find a pack of 3 for $11. Amazon sells such plugs, but I'm sure they can be found elsewhere as well. Best may be to look in your favorite computer/tech site for
> monitor dummy plug
> They say they do exactly what you need, making a monitor appear on the system where one is not normally connected. Hope it helps.
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


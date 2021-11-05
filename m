Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9167444684B
	for <lists+blinux-list@lfdr.de>; Fri,  5 Nov 2021 19:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636135993;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vhnBfPEJpt0fv6TlWAiyYcFmvSxd2+swpPQc5BAKbTk=;
	b=TUD97Ta+qshpgVC3yj+fNgLCQ1P7wsxFSbLsurdnXNVA9V1XoEB/wIsPUpt3OE6NB3+XTV
	WfZzgh6XBaaJ/Tu1ojZfKF4MDHcROxVMvKOUjqsk9O0HZViy5BMScm96gK2iOqGcu2VN8d
	YPHhTjJctcL8AgWfay3262DJwvJvoY0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575--vM5iid0NK2O6e5NEBhKTw-1; Fri, 05 Nov 2021 14:13:10 -0400
X-MC-Unique: -vM5iid0NK2O6e5NEBhKTw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3350DCC623;
	Fri,  5 Nov 2021 18:13:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2AF160BF1;
	Fri,  5 Nov 2021 18:13:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E6D4E4EA2F;
	Fri,  5 Nov 2021 18:13:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A5ICx1M011598 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Nov 2021 14:12:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 67A6D2026D67; Fri,  5 Nov 2021 18:12:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 622682026D6B
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 18:12:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC9A68001E2
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 18:12:54 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com
	[209.85.219.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-537-Dqi-G8DqNTirEtQre322aA-1; Fri, 05 Nov 2021 14:12:52 -0400
X-MC-Unique: Dqi-G8DqNTirEtQre322aA-1
Received: by mail-yb1-f179.google.com with SMTP id g17so624661ybe.13
	for <blinux-list@redhat.com>; Fri, 05 Nov 2021 11:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=2DB/YdALKnI7MNtvqKOl/yF8UZZasnlTj9vjK3wQCsY=;
	b=JX98+Ayqt8vNbJOhdiZ+r/wL7Uaohx0FEBpQeUoh2Uw96kW7WYU2sNEnGcqQkC8FNi
	AbJU2lxdNgQBJ8FvvGLwji43Z28JeJ4pH90j3Ok28fptD3BM57eBOT6eZcIMHVXq0JmS
	a8OMu/8RYEX0p6CIL5dFlOkN018upheUVYQY5+bUNxEg3O1nE71/rj2nrer1kt/3m71s
	2ARvlST9Z1D5A//+EjZ0ztgCwE201fNEnc1jpVvi+z2scm845RcT5xPmXthaEOvaRXBK
	2WEstsef2MhtvogJ8wVmUcZM4pXsYwIdPUqh5PLHcWqfuTJsdNk4JJ2OrvRDjAvTeuO/
	GjTg==
X-Gm-Message-State: AOAM531WCaVI+kMoFipeKoMG7yS30/5mTWpJciZTGFomFKnZ/xhwUgvN
	jdrovBvKf8xAGDYaOYdvHNJVGR6BbzI4Q9HhkgpYA9suvwY=
X-Google-Smtp-Source: ABdhPJyj1iJgdG7jIs2ATNxA5OptOkMQx+88JYPPx4tLSa5hoNdLvFFVKfqhANd+dLcC1BZ665PhEUKYm0Du8HPYYKA=
X-Received: by 2002:a5b:145:: with SMTP id c5mr62935623ybp.60.1636135970865;
	Fri, 05 Nov 2021 11:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
In-Reply-To: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
Date: Fri, 5 Nov 2021 13:12:39 -0500
Message-ID: <CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
Subject: Re: How to get speech in a console session?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you start the install media and press s then enter, you'll have speech
during and after install.
Devin Prater
r.d.t.prater@gmail.com




On Fri, Nov 5, 2021 at 12:37 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> So I'm new to Linux, and I'm going to be trying it out for a period of
> about a week or two, to see if I could use it as a daily driver.
> One thing I'm not sure about is how to get Speakup (with either
> Espeakup or Speechd-Up) working.
> My distribution of choice is Debian 11, by the way.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


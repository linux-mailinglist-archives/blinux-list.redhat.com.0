Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B39764AFC67
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 19:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644433106;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oKbGA0emjlPlA5n8wDwcVW2SY3RMgKAzZh246MAtgFE=;
	b=D0Xvw342iKX/0dAQI4WLNSHMUoDSuHuRJzbja2tsgoeBHgw1WonrKW5Qn7dI4v+IK+Kkhf
	qUh+m66GOKK4qTAJ3fOdEqlbFYZJAJ9RTG74g1uB16i44s/gQDaXPD7qPysFrSgs2rZq9k
	Bw+zwwTOafufB9pkaJ/3vCZMB9GRuew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-152-EsS_WN4vP2-cApRnjzaITQ-1; Wed, 09 Feb 2022 13:58:23 -0500
X-MC-Unique: EsS_WN4vP2-cApRnjzaITQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6127100C660;
	Wed,  9 Feb 2022 18:58:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A9B37A410;
	Wed,  9 Feb 2022 18:58:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 520DB1809CB8;
	Wed,  9 Feb 2022 18:58:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219IwB1H030604 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 13:58:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1645BC080AF; Wed,  9 Feb 2022 18:58:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12932C080AE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 18:58:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EBC74106655A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 18:58:10 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-77-QSD0hfcKN4CnqztseaqAjw-1; Wed, 09 Feb 2022 13:58:09 -0500
X-MC-Unique: QSD0hfcKN4CnqztseaqAjw-1
Received: by mail-qt1-f170.google.com with SMTP id p14so2717346qtx.0
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 10:58:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=BD11CNIupAs8O53Qs2K0LD2fSmCnp+Ibiw/07h5NQXA=;
	b=ER93yerCTkMVgN+QvfV9H1VbtfkQP141nhlGq0Hu1Tt5CxRj7fDc0YkcRdujvUrV8T
	r9+Vi4blMhGd4vbrLTy5VaPcxQGI7AYcE2ExLB2r6eIfpQdKnxlkzOrxlv1IHlRsNK4R
	4XLnUiO4ElkcewDnr/Z2wVgJrycSMHwmM7zU5FfyuA8nWeyg5Fbb3KZaprnqXJI9F+sH
	la2ymxC5LQyO7vrjwZ5gW1UtlPmQzkthxMubAcMh7F09QTkPqSj7vn3prDilwlGyfPQx
	T3MAzk6oJEyBgfFhT8M+8YJG6dDykacNe4py4HraW7PXYl7vifuFZtYK4QniwR/ABYRV
	qebA==
X-Gm-Message-State: AOAM532gMVmj7kTAly0mKkVIbuWYl5nyGWuRMofh1ytdbst9BH4szexX
	TCjrHxeaKg0tt1UGzqjgkB94mF4eNn7jG70jTcdsdHKx
X-Google-Smtp-Source: ABdhPJwDbrTnWeV2/uszNJPo29UmCCVA0j2H74BegdDlkFw8ASa5z0fqxsd/CuTEdpanpbs8nKkfTVrkIm8kFRdjY3A=
X-Received: by 2002:a05:622a:1056:: with SMTP id
	f22mr2394967qte.258.1644433088638; 
	Wed, 09 Feb 2022 10:58:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 10:58:08
	-0800 (PST)
In-Reply-To: <20220209115112.077dcede@bigbox.attlocal.net>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
Date: Wed, 9 Feb 2022 18:58:08 +0000
Message-ID: <CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
Subject: Re: regex help
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wait... so instead of typing something like:

mv longTitle:longSubtitle.pdf longTitle.pdf

when I want to truncate an overly long filename to something more
manageable, I could instead type

mv longTitle{:longSubtitle,}.pdf

instead?

If I'm understanding that right, than I'm having a "why is this the
first time in roughly 15 years of using Linux I've heard of this?!"
moment. Sure, tab completion works well and truncating just a bit from
the beginning of a filename or all but a bit at the end is easy
enough, but this sounds like it should make truncating the end of
afile name or the middle section much easier.

Also, some of those examples are starting to remind me of sed
commands... if I copy a bash script that's just the shebang line an a
bunch of sed commands and edit the copy to replace sed with rename, is
the resulting script likely to do to file names what the original
scrip does for the contents of text files? Or is my brain's pattern
matching throwing a false positive?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


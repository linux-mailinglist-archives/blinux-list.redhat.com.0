Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 993164B3EDD
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 02:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644801920;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=03FA3FgzeV2DCNaW6xj0bhzTrAYRlRbUo2p1h8F+oi8=;
	b=KUjNfy4b+igWft4PuR2SWnPmpLgRV8IlvIUqQM2jG7j4N5tWL58tZ1cuSDZA1g9rCGKJYN
	X6R18nCCr46akAvSkChrLsOxbNTkaE8IaNamGH8wrEiXqktyKreWvPI4m6J08lzZ2+Neph
	ixHQlSHyB4b20gMp3wp3LqnOgHs7Yd8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-121--O1yQ_PBM52PtPQPPYpabw-1; Sun, 13 Feb 2022 20:25:16 -0500
X-MC-Unique: -O1yQ_PBM52PtPQPPYpabw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81E4C1091DA2;
	Mon, 14 Feb 2022 01:25:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27CA417DBA;
	Mon, 14 Feb 2022 01:25:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 11C2B18095C9;
	Mon, 14 Feb 2022 01:25:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21E1P5Mu011936 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 13 Feb 2022 20:25:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5CFBF492CA3; Mon, 14 Feb 2022 01:25:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59615492CAA
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 01:25:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C277A1066559
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 01:25:04 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
	[209.85.210.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-550-jhE50CnBMQqAEHArpvtbGw-1; Sun, 13 Feb 2022 20:25:02 -0500
X-MC-Unique: jhE50CnBMQqAEHArpvtbGw-1
Received: by mail-pf1-f179.google.com with SMTP id y5so26582778pfe.4
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 17:25:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=O5LVGLCm6b5vUg+spMd36W3zDEAUBF6UKJXiscZEeu4=;
	b=Y7U1VkVKQUWRWIFdJxE7xvgLQGFzv0SA65RMhnZ/ThOw2GUi/6N/1r+4/YKA3LiEOn
	srxwaDjAszxu/dOZYBg3tpdpkcsI1FidkmqkY5FzSo+zNZAUPpaSCr2VtetOanp7fKW8
	taqSxV5Wv0XZ0S7aMf0IJmYJJjoFBKgsY524WXR/m3pYQCX+uQ/+fOCBMj1QZX+AYx4q
	yLlfU9Y6jthh/1cg0sRrDZb22Mufkojx/BMSa04B9nmlmdJ4pmxoF+fIyJoP1K5dleep
	L5nT37bD6o08zKZbc4tTjTxtqrNA+0s6QhYFJ6b6OyxJts3GPIBgFSs34vmfX1MvKMkP
	N9ZA==
X-Gm-Message-State: AOAM532KfA92qEJ6jch9UYNG4ibhcB0NK9EAbKchKPxnfVeshrnJje7F
	rmfm4YhJ4QFWDegE/UdQWMj8LlpIPX/aMg==
X-Google-Smtp-Source: ABdhPJyJi5JN/BfPIZCRyDU001oom0yzCBG1f2KaD1v4Jk+7nkRvoxScNbvnt7bYyN3rqkJk+6XSDQ==
X-Received: by 2002:a63:690a:: with SMTP id e10mr9778541pgc.599.1644801901187; 
	Sun, 13 Feb 2022 17:25:01 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	lw3sm7941499pjb.24.2022.02.13.17.25.00
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 13 Feb 2022 17:25:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
In-Reply-To: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
Date: Sun, 13 Feb 2022 17:24:57 -0800
Message-Id: <6076529C-A57A-4E14-99A5-7F410CCFAC9A@cfcl.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21E1P5Mu011936
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

Victor Borge had a routine in which he "pronounced" assorted punctuation marks.  You might find this amusing, if not necessarily useful.  For one thing, he doesn't get into braces, brackets, equal signs, and so forth.

In the following video clip, Victor uses hand gestures to trace out the shapes of the punctuation marks, but the audio track should suffice.  The section on punctuation starts about four minutes in, but it may be useful to start at the beginning, in order to get a feel for his speaking style, sense of humor, etc.

Victor Borge "Phonetic Punctuation" on The Ed Sullivan Show
https://www.youtube.com/watch?v=zFzMWml_X5o

- Rich Morin


> I know you can switch between the usual All, Some, etc, I want to
> control how punctuations are pronounced, e.g. '!' can be spoken as
> "explanation mark," "exclaim," or "bang," When I am writing code, I
> like to hear the punctuation, but shorten it as much as practical.
> This makes code easier to read IMO. Is there a configuration file that
> will allow me to make these changes?
> 
> Amanda[0]


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


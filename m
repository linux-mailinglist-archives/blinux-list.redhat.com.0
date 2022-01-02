Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943C482BB3
	for <lists+blinux-list@lfdr.de>; Sun,  2 Jan 2022 16:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641137952;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ov2qqfRjWVNL9uqZkihcp+e9j1ngFLT1cU6O17bqnao=;
	b=AkGDfNZmf4/AQi0NZoz1rdGGt8AR5poxpm+uBPbA7dzOF2U+F3emT14QzlwbQig4T+Kuy5
	3tJ1rxndGAAH6FriIw/dJC5oN0fOXTCVWRGTHfZ74E36yJD6IeKTHSOMajBCAdFgL20zjk
	Dub0+zZ2tc2MFzywQu8aQEylYRtyDME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-70-ly3WoV86MzqouifPVjmbEw-1; Sun, 02 Jan 2022 10:39:09 -0500
X-MC-Unique: ly3WoV86MzqouifPVjmbEw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EB811023F4F;
	Sun,  2 Jan 2022 15:39:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61DFD108648F;
	Sun,  2 Jan 2022 15:39:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A17B74BB7B;
	Sun,  2 Jan 2022 15:39:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 202Fcuvx025763 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Jan 2022 10:38:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 638091402401; Sun,  2 Jan 2022 15:38:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EB3E140EBFD
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 15:38:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4495B3C01D81
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 15:38:56 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-231-uaN0tDk7O1O2HW9ytgE2qA-1; Sun, 02 Jan 2022 10:38:54 -0500
X-MC-Unique: uaN0tDk7O1O2HW9ytgE2qA-1
Received: by mail-qt1-f181.google.com with SMTP id m18so27788409qtk.3
	for <blinux-list@redhat.com>; Sun, 02 Jan 2022 07:38:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=03ywOCkzUcbgU9TBHDJrn6HwNL2VZbqkFwacJ8czBVk=;
	b=AlnC/DrDcSwjvtTeg0i2qZDYet16Hh2+DsEmxY64hBbzSe/dfP0lcJjW92/snqo8Xb
	XFUmuf1rKDngt5eMRXkSsKR+/CAiCU7PhQB+w+IvV7HCys0yeLK8tpyEJZfY0qFPWGTS
	6TOcHpNSrN9LqvPorefxXPD+nDc/z/J0ITVGA61smmMZG3cm5vE2GAihC7EJezFevfLB
	bI1lcBch+rek3E6d5NZdw21J2T2bLMCe3foKnmM0ixH5EImfL+zQTWMm3Q3RZ9z5uwUm
	nHgdJsi1UI/41oW7/hd4xf4Irt6LhT5o7ePU9GkCwzAtJVsYdqkvfzQhUpJwvp2IUZTz
	cNhg==
X-Gm-Message-State: AOAM531NDd2iNcu0Hq9Y/NJjByvk8mMOzoAd8zkG3lphbEVDGF3qiv9z
	JPzV3Ur27Wqc+AlXoIEcWJ06MWDtBCI=
X-Google-Smtp-Source: ABdhPJwWlTn40zm9PR7ii25D162Yldsi/h87J8jc6GvPCWSHQSdBs2Z/5ODjeXacCMQlaGu9wvPKwA==
X-Received: by 2002:ac8:5dcf:: with SMTP id e15mr37853970qtx.567.1641137934009;
	Sun, 02 Jan 2022 07:38:54 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	br43sm26371567qkb.57.2022.01.02.07.38.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 02 Jan 2022 07:38:53 -0800 (PST)
Message-ID: <c3cfff39-3b29-a058-db5d-f3f42a4ea3fb@gmail.com>
Date: Sun, 2 Jan 2022 10:38:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: archlinux and pulseaudio
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <cc5a1a34-5d16-e4bf-cd5-80988090af45@panix.com>
	<1914a2cd-e729-c2df-8859-cf0a6dd86377@gmail.com>
	<c69d61-5060-8cf9-e792-a4311d6e116f@panix.com>
In-Reply-To: <c69d61-5060-8cf9-e792-a4311d6e116f@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

If you install pipewire, you'll need pipewire-pulse and pipewire-alsa 
packages. You also will want the wireplumber package. Usually this 
configuration will work pretty much out of the box.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


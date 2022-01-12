Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEB548C494
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 14:17:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641993454;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GIxwngbHAauvk1iLCfp2JssEswrZ4YyS+wk/UqWkG60=;
	b=BPu/QFr7NkXm8bWMRkNr7g7AhKlQ5D6JwaRCVt/T7wy++1Wosje79s/tSCacZqfAWTvj+R
	e/C85HBR9XYilyknIw+FwXSuSsZXJajC8rv0G+XC7p3qKhuY/Xvo0AKZvkGDrJxuze2qqH
	LgY0uqsImAPA5XkkBrICHXIqumkVCGw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-425-eXIK1DJIOx6R9m_tzCdo7g-1; Wed, 12 Jan 2022 08:17:31 -0500
X-MC-Unique: eXIK1DJIOx6R9m_tzCdo7g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2465E14755;
	Wed, 12 Jan 2022 13:17:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F8CB798AB;
	Wed, 12 Jan 2022 13:17:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EB694A700;
	Wed, 12 Jan 2022 13:17:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CDGjPg010002 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 08:16:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC78AC08093; Wed, 12 Jan 2022 13:16:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7F35C080A9
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 13:16:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE9313C01B9C
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 13:16:44 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-653-0kgF6shNPDSSKQksfWi5fw-1; Wed, 12 Jan 2022 08:16:43 -0500
X-MC-Unique: 0kgF6shNPDSSKQksfWi5fw-1
Received: by mail-qt1-f171.google.com with SMTP id bp39so2896852qtb.6
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 05:16:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=hq0WdwOqJ5gZsZQmdVs/Ae15mEESHlrqlWhivY9bc5c=;
	b=YSc7f6FzxI4U1VEyocE+BVoDOAyJn2toiaI86puk5ByWhJ0rt1Ma5ZxCLrsduEOBx7
	pqos6fOz9eMql5TDJ6kIx6WHdYdNfhkyCX8b+QpLb1osX4uCxx8qvsFzUr8T/Xw+5wik
	V7/haqNNMpxOYjOTv3qiuvqKStGjxmKSV22d0NIrrEzmLg8X4gO4yCZ35mvCekKlah3M
	F/Dnu6da2d72aN4Wlcm3IDN6wPplAtBw+SRWvYjHcR7W7jPY8rL+bs9TJ6ay8GunuUxw
	ABkegj6ZZYPVXylh+CUwpVIm0HwnfQdM8Xbf5Oqlwysy37/vX00S7PlRX9fVPZPaUjQE
	+jbQ==
X-Gm-Message-State: AOAM532OLaPyuSWCbqVGx1GT8TUtQrWXtD4sWfA7GKuq8c9SM/Lqe0fL
	pb/k+mZsGKv8V6A4vXq2wqRKw2q25plRXA==
X-Google-Smtp-Source: ABdhPJzekuRQIsKrU4FfguWQ0g/N1iEH5wTQJM9ab7UtzK0BGw0u4r8WqndnT2/frs5Y0QTiozySSw==
X-Received: by 2002:ac8:7d07:: with SMTP id g7mr7390892qtb.364.1641993402702; 
	Wed, 12 Jan 2022 05:16:42 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id y9sm8041908qkj.82.2022.01.12.05.16.42
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 12 Jan 2022 05:16:42 -0800 (PST)
Message-ID: <ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
Date: Wed, 12 Jan 2022 08:16:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: MPV problem
To: blinux-list@redhat.com
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
In-Reply-To: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

At what point in the file does this happen? Does it occur at a certain 
point in time or at a percentage? I'm not reproducing the problem here, 
mpv 0.34.0, ffmpeg 4.4.1, Fedora 35, running mpv by opening a movie file 
in Caja. I successfully saved and quit mpv and reopened the same file at 
random times up to 10 minutes into the movie, and it plays from my saved 
position. Didn't try audio yet, but my guess is that it should work. Is 
there a way for you to maybe get a newer version of mpv, perhaps a PPA 
or similar? It's possible that may fix it.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


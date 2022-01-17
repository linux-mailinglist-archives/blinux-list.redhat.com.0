Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F306490088
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 04:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642390042;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HUFFufm4y/xh76ut3NxaYVYokI6IlfMlmUqeTBrxJw0=;
	b=G5ziRP89siIsVnNsAhWE3QRv7rtsvZjwC/wB9rV4EU+EDPq2vUP6btRI8bDZkaw7U9CUdZ
	Vbt1UJWom/93XAzvfgrBhBQbl9DqTs/a6TYCLPOIvCry5IQQT67eBEphPFmiY3Cn63capX
	u4y6bl0m9uuCK9vU50XPkHTNE2R3TpE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-167-YLasSbFfN_WpRDw8kLY47Q-1; Sun, 16 Jan 2022 22:27:20 -0500
X-MC-Unique: YLasSbFfN_WpRDw8kLY47Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3065981C9A6;
	Mon, 17 Jan 2022 03:27:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A51B5E26C;
	Mon, 17 Jan 2022 03:27:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE0FA1809CB8;
	Mon, 17 Jan 2022 03:27:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H3RAmH009865 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 22:27:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4E20E40CFD12; Mon, 17 Jan 2022 03:27:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43BCF40CFD18
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:27:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25796800B29
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:27:10 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-189-o74sUootOzSYq3RVYZoS2Q-1; Sun, 16 Jan 2022 22:27:08 -0500
X-MC-Unique: o74sUootOzSYq3RVYZoS2Q-1
Received: by mail-qt1-f180.google.com with SMTP id 14so10560453qty.2
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:27:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=g6Z7ohHuWY23rwqSpP4O7fHzGb2gu9LxgA5DbV0MlkY=;
	b=NwhHThAk/7+n7a6xUv5okS+mMYM+9HvSi4sxyTkHZZgAh7p0F+Bpc+yL+s2nYqq58p
	kSt8lxRrvdpK1RCC8KtzCiYW3uPawFQw6oVf4xvsI2PnYgnUOqlkyaev3sKCDLwTb9It
	MOtKMD7DEgBirJPMB8KquHwxzN3jBl/AFS1oxaCie2OPDFrpYXx9n3A7Mbo4Q0FtigBm
	kf0+tMyLpSC2sYpTpI1IlF1Kk7OQ1MaJ81kWl5Nxvxh8bsF8dvgs6rXOdhVBi4ucoeOY
	xVTiHtJWeEw4byWaM4Q9aQBDOd04Wd1UNHvi7VXkRUv7D9mMcDYAekd4KEDEWNJjL1Nf
	EAkA==
X-Gm-Message-State: AOAM532ZmF6iANAuQGL+3USRVjzwLCXYq/QyTE4TEbJD7lKETZ9qqtRo
	J/2KFua9acpVxYRFvNL2JPGPeX2h1CG85g==
X-Google-Smtp-Source: ABdhPJwUVxkrEKRJ6DPrnnL2sWfDS7B2FvVzNdsL6P1h8fN8G8on9CqejoQ0lfW+XPVc3k56g7pv9A==
X-Received: by 2002:ac8:5ac5:: with SMTP id d5mr15837767qtd.398.1642390027660; 
	Sun, 16 Jan 2022 19:27:07 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id t6sm5748462qtr.28.2022.01.16.19.27.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 19:27:07 -0800 (PST)
Message-ID: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
Date: Sun, 16 Jan 2022 22:27:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: looking for accessible music library app
To: blinux-list@redhat.com
References: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
In-Reply-To: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

What do you mean when you say "like iTunes?" Although I know some of 
what it is supposed to be able to do, I never used it, so I'm not sure 
what functionality you need. Are you trying to download music, to 
organize it or to play it? The best place to buy downloadable music now 
is probably Amazon, as unless I'm missing a site where I can buy flac or 
wav files from my favorite artists, Amazon has the best selection of mp3 
files available for purchase. As for organizing music, I have seen many 
library style databases integrated into all kinds of player software 
that comes and goes, but nothing beats the good old filesystem. Files 
are usually already named according to either Artist - Title, Track# - 
Artist - Title or Track# - title, and those files are either stored 
inside the main music folder or in a folder named as Artist - Album, or 
at least this is what works best for me. Specifically, if I have a full 
album, I store the songs in Artist - Album/Track# - Title format. If I 
don't have a full album, say I have just 3 songs by an artist, most of 
the time from different albums, I just store them as Artist - Title in 
my Music folder, which incidentally is added to my home folder 
automatically by xdg-dirs I believe it's called, which is a tool 
integrated into most desktops that just kinda sets up the home folder 
with some reasonably logical locations for things. Many music players 
exist, but I tend to look for mpris-compatible players, as I have set up 
shortcut keys that call playerctl to perform various functions. Some of 
the best music players include Audacious, which used to have its own 
hotkey shortcut functionality but seems to lack the feature in a screen 
reader accessible way now, Clementine, which does have shortcut key 
functionality and can minimize to the notification tray, Strawberry, 
which is a fork of Clementine, but has some additional preference 
options, Deadbeef, which is somewhat like Audacious in its 
functionality, and then there's good old vlc, which has its issues 
playing files gaplessly, but plays audio and video files in many 
formats, and mpv, which plays even more audio and video files and can 
even play them straight off Youtube and other websites. If you're 
specifically looking for library database and player functionality in a 
single package, Clementine, Strawberry and Rhythmbox can all do this, 
although I don't use that specific functionality, so I couldn't tell you 
how well it works. Many of the players I mention here will also allow 
you to fix their tags if they're not correct for some reason, or write 
them if they don't already exist as well. If there is some other 
functionality you needed that I'm not aware of, feel free to let me 
know. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


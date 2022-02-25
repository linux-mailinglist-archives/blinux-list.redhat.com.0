Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0941D4C47C2
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 15:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645799881;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tz37P6WFBl0W0+Vr2cqAXOV/V+5CZc2XBGlGq5KerDQ=;
	b=c6XH+qK+rW+2KrKgouy4JpuL4R2V68xD+2Ln4FfrkUXqlqRfs4nn8rWxfJqY6d7xVMNpp+
	xf4JHxOFFyPMiDWv+DsmbvdtrmPMfABJTm+7+dmMKT/Kr9cS4AKTaIFbhAhgjXI5eZSJBp
	QyVd7ZmZdgJz9qfTg8+vxWLTTWQBpyY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-155-GE49civxOiiQIA0wStgMRg-1; Fri, 25 Feb 2022 09:37:57 -0500
X-MC-Unique: GE49civxOiiQIA0wStgMRg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8EF1824FA7;
	Fri, 25 Feb 2022 14:37:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36CCE6FB03;
	Fri, 25 Feb 2022 14:37:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C33514EA37;
	Fri, 25 Feb 2022 14:37:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PEbjwO020175 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 09:37:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C6F17AD0; Fri, 25 Feb 2022 14:37:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 871DB7ADF
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 14:37:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0750410AF954
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 14:37:42 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-190-HR8IPc3SODewexh4DjHwsw-1; Fri, 25 Feb 2022 09:37:40 -0500
X-MC-Unique: HR8IPc3SODewexh4DjHwsw-1
Received: by mail-wr1-f50.google.com with SMTP id v21so4839870wrv.5
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 06:37:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=qwz2wNILlj2hr/Z/ZBj22BRQ0hD4S3EXK/8f/vhVCGk=;
	b=DygTrNWRrFoKIEOM0EW9tfsY4VppjRITHbcW9XTFwh99tpAxxVtlkMOYVgTTXhvpyj
	MP00HL/njoUcDYAb/m6XCAQ4BZ0NNDc1kBp/DoPgfaISm52vumN+wTxls4GaAdCPq8Sx
	nKlBV8woq+uG4aYPuhNiuaYfWtFmF3XNqJzNQ84rRxdimGS4kz6G1L4gYhImOx5fjWnI
	hwxOzY+xjBbj0ywx8EpXfLEqU7Qu3+dK4EjOmlYP2vksS7eWiRYugs19U+VUcX/J2TPM
	Xd52xqOaO7XubzeNbKNojcIWvp1K72h1kpyHaRSN/9HIQRhArEYqTIVQLplGl+ibbTrG
	zmpQ==
X-Gm-Message-State: AOAM532o8283AO0wljuzvc1LKZujCPO7mCdiqUz4mJZZMK1tAoaHedp+
	9qIAogcF09zllAHLRiqkxRDdt6P12hMmgw==
X-Google-Smtp-Source: ABdhPJwALKeZO6kv+sqF1ZTjKjGaDBtMoKhqTlCoVFt212Z1V8/peAA1cG52Q9osi8gz7CC6ftaHdQ==
X-Received: by 2002:a5d:44c7:0:b0:1ed:e11c:9b73 with SMTP id
	z7-20020a5d44c7000000b001ede11c9b73mr6231582wrr.574.1645799858511;
	Fri, 25 Feb 2022 06:37:38 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	a10-20020a5d53ca000000b001d847134b04sm2390288wrw.97.2022.02.25.06.37.37
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 25 Feb 2022 06:37:37 -0800 (PST)
Date: Fri, 25 Feb 2022 14:37:50 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voting: Which game would you like to have on Linux?
Message-ID: <Yhjpvu0HyqYbNVO3@waffles>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wordl, or a spinoff of it making it more accessible but I dunno how the
NYT would take spinoffs though.

Or, Sudoku as said though too

On Fri, Feb 25, 2022 at 01:03:44PM +0000, Linux for blind general discussion wrote:
> Hello list,
> 
> right now, I'm developing a version of my RTK library for Linux.
> 
> RTK is basically a set of various functions, which should significantly
> easen up my future work.
> 
> And in order to test it before using it in serious projects, I decided
> to build few "minigames", as:
> 
> a. I need to get a better grip of packaging for Linux and
> 
> b. We currently lack a lot of these.
> 
> 
> I already have AudioGo, a blind accessible version of the ancient
> Chinese board game, in a pretty finished state.
> 
> 
> The question is, what logical minigame would you like to see next?
> 
> The choices I'm considering right now are:
> 
> 
> * Minishogi
> 
> * Arimaa
> 
> * Othello
> 
> * Connect four
> 
> * 2048
> 
> * Sudoku
> 
> * Minesweeper
> 
> * Wordle perhaps? I didn't check yet whether the official version is
> accessible or not.
> 
> 
> If any of these games already has an open-source accessible Linux native
> version, please let me know, I'm not aware of it.
> 
> 
> Also, if you have suggestions for other interesting games I might have
> forgotten, feel free to suggest.
> 
> Just note, that the suggestion should:
> 
> a. Be simple to fulfill, these are projects just to test out a library,
> not long-term projects. Generally, all I expect of these games is to be
> able to launch, start a new game, save a game progress and exit, plus
> some basic settings. Nothing more, may be I'll add a game export option
> to the board games, but that's all.
> 
> 
> b. Should be a logical game. I.E. one where you use your logics to win.
> The reason for this is in the first place my personal preference, but
> also the fact that Quentin Playroom already covers many card games and
> similar stuff, so they don't need an immediate addressing.
> 
> 
> Final note, if you don't know some of the games mentioned in the voting
> list, please, I would greatly appreciate if you took the time and
> checked out at least their basic description and rules.
> 
> Linux itself is among the less recognized desktop operating systems
> compared to the mainstream, and yet, many of us on this list simply love it.
> 
> So, why not to give a chance to a game you might not have known, but
> that can turn out to be really interesting?
> 
> 
> Thanks!
> 
> 
> Best regards
> 
> 
> Rastislav
> 
> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


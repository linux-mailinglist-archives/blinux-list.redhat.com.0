Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA44450832
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 16:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636989832;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WdsIVP1x/M9FDZGcnrn+pZRZhpdwbH11YSYP/cKYxE0=;
	b=Z7Bxl7acsakOlQ8iti25iKIYI704gBgQfdjqagxzutVty0b0E87WzoFcE8tWWIY4mPTkb5
	dWLTUQBui2Q6HtNvjz08l+2/oBvd/x4oTFaPcg82TQKmCXipThFQgUohffSKlQYrw2y/gB
	E7w40d/fZL54P1ooEuu4HIQNEpZym40=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-64-GAr3uQ2VMeyhlzGZ5weFaA-1; Mon, 15 Nov 2021 10:23:50 -0500
X-MC-Unique: GAr3uQ2VMeyhlzGZ5weFaA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD6EA8799EB;
	Mon, 15 Nov 2021 15:23:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73BCE5D6D5;
	Mon, 15 Nov 2021 15:23:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3DC31806D03;
	Mon, 15 Nov 2021 15:23:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFFNM52023137 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 10:23:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DBE54047272; Mon, 15 Nov 2021 15:23:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 49C3F404727A
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:23:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30E9F85A5BC
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:23:22 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-287-yG6bxy-DOhSGVuZlSMO73A-1; Mon, 15 Nov 2021 10:23:20 -0500
X-MC-Unique: yG6bxy-DOhSGVuZlSMO73A-1
Received: by mail-qt1-f180.google.com with SMTP id q14so15861665qtx.10
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 07:23:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=Y7dH/8pLKLBSCFaBQy2k3zEd5/Dp8sN9B0rl9S1xkT8=;
	b=jyVVphlU08eipA90uz11bpLkTCy9UO07agZwKMYQUt+Q4foI2gkbN1TpHPoPgGSDD0
	Bn76LLvWkz6qfK+VUBrFDMD8vbY49nkG6CPi3LId/ikKYnGjOTDw6kcZjtWMfGVWmWPX
	8yffEABw1jpBak1GIg/nrF1aRXQb204jgyx01Sgp/TX71uej4iko4Vcmsx4PkpzVLEO/
	V7txaeX88c2clGGkCknTp7eT+uTnFR0H8hfsICEYT0/KREbXhQmsIUmp7Bi6t3FZGTiK
	2X8odsD/I7SuT3zWB2DUpTWEGDiIXKAsVcgYNJlDHZaX+JQcYT8qEkqhjCuOFFSj3b0k
	Ew6g==
X-Gm-Message-State: AOAM533WdY95tBVV00m2b6OorJtLX/EYxLpzNKG9YeCwNLKf3ighv35I
	I90pkPMRRWdgMYKqKURi2pf3fozuM2gUxA==
X-Google-Smtp-Source: ABdhPJwVRQj5EPhxrwefynNYJmKsmsG4UMFeaRZnj+PvRpg8NkK5bJGWoNcGVu9psu50R5OxiEF6EQ==
X-Received: by 2002:a05:622a:1350:: with SMTP id
	w16mr40597375qtk.394.1636989799768; 
	Mon, 15 Nov 2021 07:23:19 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id o9sm3435051qtk.81.2021.11.15.07.23.19
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 15 Nov 2021 07:23:19 -0800 (PST)
Date: Mon, 15 Nov 2021 10:23:18 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <f3a2a3ad-31fc-e459-c830-e63fcfaad148@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


It is fairly easy to setup.  Show cursor is in the configuration menu and the config. list is searchable to avoid up and down arrow only.
Hitting the question mark key when on a config. list bbrings up a hehlp page for it.  I would be happy to help you past the unfamiliar bits
like imap syntax.

On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> Looking at alpine, the first thing I noticed is that I can set an inbox
> path and an smtp server, but I can't seem to set an imap server, and I
> couldn't immediately find the encryption, port and authentication
> settings even for smtp. I really do like the menu interface, most of it
> with single-key mnemonic functions, but there's just too much here that
> I can't seem to figure out, like how to set up imap email, although I do
> know that it's possible. Problem is even reading the man page isn't
> helping me get through all the config options, and only my page-up,
> page-down, home and end keys are navigating through the configurations,
> making it difficult to set a single option, and I don't see any show
> cursor or similar command line option that will allow my screen reader
> to speak the configuration I would be setting. Unfortunately, even the
> most inaccessible desktop email applications make it easy enough to set
> up a mailbox using imap and smtp settings, complete with
> security/encryption and authentication. I think what I'm looking for is
> some kind of "setup new mailbox" menu selection, but I don't immediately
> see that. It seems it looks good for local mail, but I'm not finding any
> remote mailbox setup. I did see message threading options, which
> definitely helps with that issue, but remote mailbox configuration
> definitely needs to be easier to do right from the setup menu or the
> main screen that I see when I open alpine.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


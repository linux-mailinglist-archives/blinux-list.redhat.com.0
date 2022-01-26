Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1126C49D490
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 22:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643232851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s8f7SmJfJAu3xpWzE/FN4QYuYRvO17A9f2l9ZxD3ezw=;
	b=XDydkOdZFbWE6AGMjjmn1BCGjQYO1FZ1tYY5KTJT+0ZxIQrFSsXRw8xf0A/AEiI51M9hPp
	5QDvdGfIDR+QcFb4tN2zTpahd51iSRPXyeNnDZgI2kPHpBtt/w872RjlKTX4mrGLgjFCcr
	m7WTINg7pJ7mhLmiAgyqlnMruCI0On8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-249-3BHza9aCM4SgYie9_bUB9Q-1; Wed, 26 Jan 2022 16:34:09 -0500
X-MC-Unique: 3BHza9aCM4SgYie9_bUB9Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6776A1083F61;
	Wed, 26 Jan 2022 21:34:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2829A100AE2C;
	Wed, 26 Jan 2022 21:34:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAC2E4BB7C;
	Wed, 26 Jan 2022 21:34:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QLXtqg028358 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 16:33:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A7A8A40CFD14; Wed, 26 Jan 2022 21:33:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3E0F40CFD04
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:33:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D41585A5AA
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:33:55 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-91-1bdIlRsEPmauqSRxRpUbpA-1; Wed, 26 Jan 2022 16:33:53 -0500
X-MC-Unique: 1bdIlRsEPmauqSRxRpUbpA-1
Received: by mail-qv1-f48.google.com with SMTP id e20so1063255qvu.7
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 13:33:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=cAX8n69zjsDX9AGp/8ChNQdf7uyI/0CU2an2tJDLmGw=;
	b=j13GTUjT0vp1Z5L/i7Kv5BIH7QwIDIR6Vj9iUSyFoPxx/cKlmi6+e98a/xg4U2S+QM
	4axtl9mCWHPN273kk8En3vYYNCWTNP5H2oZ03pmYVq9R0LiSd8eWznk+JebW2XWb8w2J
	UmBxXPXGziqaHZoHR4Yb/YYC4es8EUM6m2fXcGCOY4G5KXvlPyOd60FFKRxKUxOn4aq8
	81TIimx9o01QVPgxtJBHBZ2Qz2tUM/JboW5mwiI3pSqcDELGlgN6jkG2CAq0eHIZvmsV
	e3zf/bLFIEQ9qcWkPsvN2Wc34nwxJw2EkneKHgKWZo6+YXYAkV142QIuDdFxnuohHtry
	18Zg==
X-Gm-Message-State: AOAM533nLG99adlmU/Xckb7NthC8bZaObUuLGGZqbpuypgcxqSx2p1d9
	JWyyAgoHjFf+17ImdPspbZIe5YFomUQnzLAr8RjPgNJ0
X-Google-Smtp-Source: ABdhPJxyQ+xVyyzMkRVYvWXJIrxcTQ9eWS/M6Z3mSjoyskNqpbpgM4IAIm2lWQkpAWNyQDMJ6GAed71jQNserrBtnAo=
X-Received: by 2002:ad4:5f89:: with SMTP id jp9mr239551qvb.72.1643232833130;
	Wed, 26 Jan 2022 13:33:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Wed, 26 Jan 2022 13:33:52
	-0800 (PST)
In-Reply-To: <Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
Date: Wed, 26 Jan 2022 21:33:52 +0000
Message-ID: <CAO2sX31Qt4pY4bbeE1BqB9QXeyDxYAJDbk5O=mpqX09L56Srcg@mail.gmail.com>
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

gtts is giving me the same error as chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


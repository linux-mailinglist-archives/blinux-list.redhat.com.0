Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E04BB4B0E0A
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 14:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644498123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v95Ntb0l7kGFQBnN99Bm7oR4k34ELYy/kAGQvFxnv7M=;
	b=dmELKRQSh4p2Gv717fH1oKFvqwqztv21+T7NHW7Qur+2BOGNyhe+U4ZJMgtZiJlFEXX5H4
	tOTHbQcUMaAsvyjFngf+LFz47AmcfhC4dNPhlSUO/ngI7BA8qnWhvuvcEq8elcBG4wxhVf
	Uwdu3NJBZeRxxJCuIVCWAoB9lTUVAMU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-316-NA0psTDgPH2EIsdFYmwfqQ-1; Thu, 10 Feb 2022 08:01:59 -0500
X-MC-Unique: NA0psTDgPH2EIsdFYmwfqQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D11156408E;
	Thu, 10 Feb 2022 13:01:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A46412B44E;
	Thu, 10 Feb 2022 13:01:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D08F1809CB8;
	Thu, 10 Feb 2022 13:01:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AD1c3L029614 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 08:01:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 06FFDC080B9; Thu, 10 Feb 2022 13:01:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02C92C080AE
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:01:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFD6F1C0336F
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:01:37 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[70.40.207.205]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-370-RK4MNP2NOOCNaHOs6nm4ew-1; Thu, 10 Feb 2022 08:01:34 -0500
X-MC-Unique: RK4MNP2NOOCNaHOs6nm4ew-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id 679972009F75D
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 06:40:42 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id I8kcnzU4Vv5IUI8kcnP8tr; Thu, 10 Feb 2022 06:40:42 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:44061 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nI8kc-004Kge-1R
	for blinux-list@redhat.com; Thu, 10 Feb 2022 06:40:42 -0600
Date: Thu, 10 Feb 2022 06:40:40 -0600
To: blinux-list@redhat.com
Subject: Re: shell brace expansion (was "regex help")
Message-ID: <20220210064040.2e65d696@bigbox.attlocal.net>
In-Reply-To: <CAO2sX321xVNBtzr4ro_qeubmgbi6DEDyMEo7Bd+4uJK+s6e5rQ@mail.gmail.com>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
	<CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
	<20220209134336.72a59209@bigbox.attlocal.net>
	<ddfd6124-1054-6f85-0b18-3a4da344a557@slint.fr>
	<CAO2sX33Be721PG40oKJY6C9BuZcDJcEpZAAU22L+tTgQnftfnQ@mail.gmail.com>
	<20220209164324.18d9bafa@bigbox.attlocal.net>
	<CAO2sX321xVNBtzr4ro_qeubmgbi6DEDyMEo7Bd+4uJK+s6e5rQ@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1nI8kc-004Kge-1R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:44061
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim again.

> So, the syntax is
> 
> start value double dot end value double dot step increment
> 
> and if the third value is omitted, it defaults to steps of 1.

Unless the first value is less than the second value in which case
the step defaults to -1 such as

  $ echo {5..1}
  5 4 3 2 1

-tim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


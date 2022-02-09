Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9604AE661
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 02:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644371730;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FeCcGatyfKfE819Pww0O2mgntn+JYMJWpTIpJyNY2LE=;
	b=F9MfY5RsmbBgy1vmyPFkYOWqCyvolaB9XHViEAhfPMk8cJaJwm8chta2slCaLGQLYVVi6j
	PLLUY1w1jJFI1tu/EiWxROiR8qGzCax5PddSNe7364xPTxht0JxP0jLcFy24EnTirMnKiV
	Ezrxu4CQsrfWYjJ5aA5B4DokFVhJszI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-277-dz5XI8L-MJWHCNF0Dj6Gpw-1; Tue, 08 Feb 2022 20:55:29 -0500
X-MC-Unique: dz5XI8L-MJWHCNF0Dj6Gpw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39617100C662;
	Wed,  9 Feb 2022 01:55:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 211AF12E26;
	Wed,  9 Feb 2022 01:55:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EEE834CA93;
	Wed,  9 Feb 2022 01:55:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2191tEIJ014987 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 20:55:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 031711121320; Wed,  9 Feb 2022 01:55:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F07C91121324
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:55:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F4C085A5BE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:55:08 +0000 (UTC)
Received: from gateway13.unifiedlayer.com (gateway13.unifiedlayer.com
	[74.220.216.63]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-100-5xSWOzbcNxCgriEhZAqt3g-1; Tue, 08 Feb 2022 20:55:06 -0500
X-MC-Unique: 5xSWOzbcNxCgriEhZAqt3g-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway13.unifiedlayer.com (Postfix) with ESMTP id 00CCF20090E4C
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 19:55:04 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id HcCGnAjwPtGNQHcCGnlnoN; Tue, 08 Feb 2022 19:55:04 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:42534 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nHcCG-003SHv-NN
	for blinux-list@redhat.com; Tue, 08 Feb 2022 19:55:04 -0600
Date: Tue, 8 Feb 2022 19:55:03 -0600
To: blinux-list@redhat.com
Subject: Re: De-arrowing my system...how easy it is?
Message-ID: <20220208195503.3efe4f70@bigbox.attlocal.net>
In-Reply-To: <CAO2sX31toO=qxKykAemhKi2HFwGSasjWNCUDf=O2uEEDS9Dqeg@mail.gmail.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<YgMV348HDT3todvP@panix.com>
	<CAO2sX31toO=qxKykAemhKi2HFwGSasjWNCUDf=O2uEEDS9Dqeg@mail.gmail.com>
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
X-Exim-ID: 1nHcCG-003SHv-NN
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:42534
X-Source-Auth: tim@thechases.com
X-Email-Count: 2
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I think they're in the "kbd" package.

https://packages.debian.org/bullseye/kbd

which I would have figured was in the default deployment, but if you
need to add it, it should be an

  $ sudo apt install kbd

away.

-tim

On February  9, 2022, Linux for blind general discussion wrote:
> Any idea what package provides dumpkeys, showkeys, and loadkeys?
> Because these commands don't seem to exist on my system.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


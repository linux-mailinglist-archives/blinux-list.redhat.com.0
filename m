Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BF54C5FF7
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 00:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646006184;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aDdRyV9/DN6e1e/rYwxGk+TmsII3u6QzNpqEtZtxaYE=;
	b=FoY1E5au4dnWiWPh187R2CvCtodRMqVZfuQ2lDnv62cNFsEui6EnEqNBew+mlNM3Vw143T
	ebe9I5E8wLbWtRkIN5wbqjmK2sArQAKOVT3/kw5r+8wyZB33y/VP2bt1w+9Db57KZGS5RW
	9HtGh8WfYNh16X9pW12UjdwXD2dt7Nk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-606-gSGtUf5aPNKh3GwfZ6_xQA-1; Sun, 27 Feb 2022 18:56:20 -0500
X-MC-Unique: gSGtUf5aPNKh3GwfZ6_xQA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C637824FA7;
	Sun, 27 Feb 2022 23:56:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A76A962D45;
	Sun, 27 Feb 2022 23:56:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4731D1809C98;
	Sun, 27 Feb 2022 23:56:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RNuAqZ019425 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 18:56:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CFCE740CFD10; Sun, 27 Feb 2022 23:56:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAABD40CFD0A
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:56:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F9943C01D8A
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:56:10 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-619-IM2z4ubOOJugc4sBw4ls0A-1; Sun, 27 Feb 2022 18:56:06 -0500
X-MC-Unique: IM2z4ubOOJugc4sBw4ls0A-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id DB7A91BBEEE
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:56:04 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id XufSj9t9icUd for <blinux-list@redhat.com>;
	Sun, 27 Feb 2022 23:56:03 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 8A9461BB092
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:56:03 +0000 (UTC)
Message-ID: <57d14a3d-be66-d3ed-51f2-78a5cee23d06@free2.ml>
Date: Sun, 27 Feb 2022 18:55:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Voting: Which game would you like to have on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAO2sX303T7OgFDkL5qZwAwDc2T1miTVrrAaB24EZ=i-R8H6syw@mail.gmail.com>
	<92f91c3f-56f6-ae03-0f4e-d52c3fc64daf@free2.ml>
	<CAO2sX321e0PL969ePjSzSKvy=HxDoueBc-P2jFwS50sM+ZR6AQ@mail.gmail.com>
In-Reply-To: <CAO2sX321e0PL969ePjSzSKvy=HxDoueBc-P2jFwS50sM+ZR6AQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As I've never heard of 2MB and it sounds like the kind of thing that
> would be difficult to search for on Google, mind providing more
> details?
Oh sure. I thought one or both of the people behind 2MB were possibly on 
this list, but if they were, they probably would have chimed in by now. 
2MB Solutions
> https://2mb.solutions/

consists of Michael Taboada and Billy Wolfe, both of which many of us 
know from various projects including BPG, Audio Game Manager and other 
games. Billy is actually the Storm behind Stormux as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


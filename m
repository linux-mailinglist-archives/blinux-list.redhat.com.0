Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BBD44106C
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 20:21:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635708113;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IHS76CWzZEg00FspsdeUaEQo57XnEeGloUIxMnLLdrU=;
	b=er3vpoN6LHIOYaNEZ2BjKCBMBo1lg2KFEadH4fhfQN64odiwBPV+xYVh2TwrpSqghVb6Cm
	KOIQzX6OlZPXKqkVOO1RPmws1a4/5qdcD6uBGTj7TgbjdMHASpz+wo51eg8Q164lrjOIab
	ue2dhtTxeAXPGjQBZNkNwzbCQ1r7JeU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-rmLPFn_uPFSFm9sg0lY-Fg-1; Sun, 31 Oct 2021 15:21:49 -0400
X-MC-Unique: rmLPFn_uPFSFm9sg0lY-Fg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 285188030D2;
	Sun, 31 Oct 2021 19:21:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 037205D6D5;
	Sun, 31 Oct 2021 19:21:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F5A61800FE4;
	Sun, 31 Oct 2021 19:21:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VJLSu8024337 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 15:21:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 272381121315; Sun, 31 Oct 2021 19:21:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 233471121314
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:21:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2213A8011AF
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:21:25 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-593-IdBNb7T0Od2EhzxfmdULLw-1; Sun, 31 Oct 2021 15:21:23 -0400
X-MC-Unique: IdBNb7T0Od2EhzxfmdULLw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 5DA68621C45; Sun, 31 Oct 2021 19:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 58E59620213
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 15:21:22 -0400 (EDT)
Date: Sun, 31 Oct 2021 15:21:22 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Beginner's Guide To The Linux Terminal
In-Reply-To: <4992392c-c4ea-7c33-5bd3-585e7620df5e@gmail.com>
Message-ID: <Pine.LNX.4.64.2110311520351.28925@server2.shellworld.net>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
	<alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
	<afb0e612-5d09-f358-78b7-f4a455678088@gmail.com>
	<4992392c-c4ea-7c33-5bd3-585e7620df5e@gmail.com>
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Indeed.



On Sun, 31 Oct 2021, Linux for blind general discussion wrote:

> Looks like maybe you want
>
> https://tldp.org/
>
> That was quite a variation in mileage for me, 0 to 60 there. LOL.
>
> ~ Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


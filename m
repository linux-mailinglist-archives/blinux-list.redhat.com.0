Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E5BD929814E
	for <lists+blinux-list@lfdr.de>; Sun, 25 Oct 2020 11:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603621719;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VzNVlALsV8iqf2T59OkLS8kxjTr0DWUfpFZ1hNdZYPY=;
	b=ht3+K1Dk8LBzEv3gy8gETWeYopKE9xvqJN21/dNVBwBpt2sPK8oGDKdj33suftLDRy0bGw
	WLJ/kA0/CjrPJip6r1cunoxHzeN9bhEAgq8NkKF93h3IqSXR22LLyv4wYMIXbbNKC8K49f
	jChZMc8XdaDIn5ki1PS869nB09QRI60=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-94-3hoDE9hsMsW8vU9xO9HstQ-1; Sun, 25 Oct 2020 06:28:37 -0400
X-MC-Unique: 3hoDE9hsMsW8vU9xO9HstQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1221B1006CB2;
	Sun, 25 Oct 2020 10:28:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B6055C1DC;
	Sun, 25 Oct 2020 10:28:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 819B744A43;
	Sun, 25 Oct 2020 10:28:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09PASHr1030489 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Oct 2020 06:28:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 24D32217B40F; Sun, 25 Oct 2020 10:28:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F86D217B40D
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 10:28:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6C3D8007D9
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 10:28:14 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-314-aYuFP-TMNa-Vaee6X98w5w-1;
	Sun, 25 Oct 2020 06:28:11 -0400
X-MC-Unique: aYuFP-TMNa-Vaee6X98w5w-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id D403B6DD
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 06:28:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sun, 25 Oct 2020 06:28:09 -0400
X-ME-Sender: <xms:OVOVXzzfm6TzcU-1sue3mbUZiOck09v0XwupEKpAbHdi_U4f5pDjSg>
	<xme:OVOVX7QQNDysb38-5XiSA1upg_Ne1ME5RWqCe45QgN4opJ4NbxoNc-vvg6zSv8wo6
	gHxz7u4CKDLNgfANQY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeeggddujecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedvrdef
	rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:OVOVX9Usfd6NYRjGvk_cIgoxIGy2cK0GmpyvgrzblPvgQAeSORGd9g>
	<xmx:OVOVX9jg0oBpHXNVvYkT-_JfynyWflthq6l9JO-vszyNc4sXhjRYnw>
	<xmx:OVOVX1CQLyNXi6X3rEcMXobBIcPZfflj-aMprnMe1lrjjeRgR1yXgw>
	<xmx:OVOVX4N1uhsJhS97JxD8RiMZDiaXhIxd6WWJHSAMbLJZeTUZWNhdMA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id E43203064610
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 06:28:08 -0400 (EDT)
Date: Sun, 25 Oct 2020 03:28:07 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How do I install Voxin on an Ubuntu based Distro?
In-Reply-To: <160360335129.6.5638435422909367922.1438135@slmail.me>
Message-ID: <d5c3a72f-6dd0-5c83-c2-60a13f3d4ec5@hubert-humphrey.com>
References: <160352425235.6.1944557228384903424.1427650@slmail.me>
	<20201024.073231.148.6@[192.168.1.130]>
	<160355389674.6.9713551340879186352.1432620@simplelogin.co>
	<160360335129.6.5638435422909367922.1438135@slmail.me>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well SL, I don't think "American English" is part of the file name, so 
once you type that command without that, as they say "you should be good 
to go"
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


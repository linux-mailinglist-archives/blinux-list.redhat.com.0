Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC28482853
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065523;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/nZ/kOKGR70AehtFa+AyWfqL1476LtoMTam9QPJh+xA=;
	b=igcQ0HSGzVwLqAA3XzfEZ8ueA26/SNSkV6jIYA06XsS+xBkXN4O6vmnLhuTiGBn8+p+Wyk
	d83Eaoet4sQwvqo+TD4S+qC+qjkJlANkYbjXr95JHWSmJ/FtGXtVuP6aAhKiqgII4oSYeI
	dMOshGv/PKBEmBocpQcmH7o3+dTt3j4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-lBNmd0qBOoyFUMdz5RmrUQ-1; Sat, 01 Jan 2022 14:31:59 -0500
X-MC-Unique: lBNmd0qBOoyFUMdz5RmrUQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34809802C92;
	Sat,  1 Jan 2022 19:31:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B4551B5B7;
	Sat,  1 Jan 2022 19:31:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C7AB84BB7B;
	Sat,  1 Jan 2022 19:31:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JVqWZ015518 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:31:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1607A1410F38; Sat,  1 Jan 2022 19:31:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11ADA1410F36
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:31:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E55913806721
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:31:51 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-460-Aq2l1lp-Mky9j7Mij8wILg-1; Sat, 01 Jan 2022 14:31:50 -0500
X-MC-Unique: Aq2l1lp-Mky9j7Mij8wILg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 4BED6320076F
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 14:31:49 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute3.internal (MEProxy); Sat, 01 Jan 2022 14:31:49 -0500
X-ME-Sender: <xms:JKzQYXaKrNbWKMZekzHZvIXHMimsah1aoJwy7rGRoA7qDoEo91EYfQ>
	<xme:JKzQYWYUm6zpsMAbad4Vq9BQn3XyhaIXDqjJPAdg8dUaBKxxWcveh_KQRpGklu86X
	JCY7R5j-vXVZAkuoss>
X-ME-Received: <xmr:JKzQYZ-rwwszx-m4WJhU4YvawlLSnkrNzzxSDJdOKmzrrMOdJnh0IfwOcpwJvca7CyAc4YXwbr2npHx-IhSCZ040L2xaoMENPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddvjedguddviecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtre
	dttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuie
	ehvdefffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihii
	vgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuh
	hmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:JKzQYdpY-CvePUiYoHfZIQzrRx5EVQl_f7yU2oRLG0QmQFP54N487g>
	<xmx:JKzQYSp1zQnV7UEic1luryAPnNEMO3oA7FWOv9XXeL22cWSXgha1wg>
	<xmx:JKzQYTQ7XbMsxLMsWNROb8JWjnnpb3UzL-m2UKV7PUiP3wr9cQPxug>
	<xmx:JKzQYQEuK06waYaYXhwC82VgEnGALyvOU4uniikm3ek-QesXhq6kkw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sat, 1 Jan 2022 14:31:48 -0500 (EST)
Date: Sat, 1 Jan 2022 11:31:47 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Recovering shift deleted data
In-Reply-To: <f018d99b-f81d-1602-b4e1-0dbdf65f6b24@seznam.cz>
Message-ID: <b50a253-9386-d575-23e1-25d53ffb3fb5@hubert-humphrey.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<963111a5-9514-068d-db29-c0883322600a@gmail.com>
	<27d3f316-bcd0-3ea4-1277-ab5d1318153c@seznam.cz>
	<f018d99b-f81d-1602-b4e1-0dbdf65f6b24@seznam.cz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, since you haven't restarted, you can run a "locate" on some part of the 
file name-and-pipe to a file. At very least you will have a list of these files 
you may be able to find elsewhere or grab from youtube.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


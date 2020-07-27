Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id B233A22E621
	for <lists+blinux-list@lfdr.de>; Mon, 27 Jul 2020 08:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595833019;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XnfeyWJKcPZUxdytU3VQCQYpxFEV5Tg24ktHc883oO0=;
	b=hhrtUPZBHjDyqeUizV+wMoigi1ymujhke9JmL0WYM1Xg/14u7f8t5SwG6kYmpPHcD82vEn
	ot1s09h6lDYPBz6IHt5vlk0rwH/7YKUh17xFMK7zlKTQkWItujVVr1FN6H3eWHXD4RGLDg
	GFsk48tvCDWEIYXkLo7A4cW5Hy2PXXs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-303-V9wxtwHVOb2eW6dAK9J1HA-1; Mon, 27 Jul 2020 02:56:57 -0400
X-MC-Unique: V9wxtwHVOb2eW6dAK9J1HA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6054518A1DFD;
	Mon, 27 Jul 2020 06:56:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9479310013C0;
	Mon, 27 Jul 2020 06:56:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA9DD95483;
	Mon, 27 Jul 2020 06:56:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06R6udrs002268 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 27 Jul 2020 02:56:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C367217B433; Mon, 27 Jul 2020 06:56:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 777E42166BA3
	for <blinux-list@redhat.com>; Mon, 27 Jul 2020 06:56:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99E3A1832D2B
	for <blinux-list@redhat.com>; Mon, 27 Jul 2020 06:56:36 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-24-VaqdvZ3fMHeYwzRVS6Go7Q-1;
	Mon, 27 Jul 2020 02:56:34 -0400
X-MC-Unique: VaqdvZ3fMHeYwzRVS6Go7Q-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 92A6857E
	for <blinux-list@redhat.com>; Mon, 27 Jul 2020 02:51:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Mon, 27 Jul 2020 02:51:28 -0400
X-ME-Sender: <xms:cHkeX5gr5ECdqWNFvLd5f1D69DxbdUjyIfw69s1ajHzd4suJDUhpJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrheelgdehkecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkfgggtgesthdtredttdervdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhephfdvjefgfefhvdfhvdegvdeivdfhteetjedvjefhtdehleeftefhteej
	tdduhefhnecukfhppedutdegrddujedvrddtrddugeefnecuvehluhhsthgvrhfuihiivg
	eptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhm
	phhhrhgvhidrtghomh
X-ME-Proxy: <xmx:cHkeX-A7Z-jKPY3yJ6GPDS9QSqZzI8YXF6Q-_l--z5OtRmxQFHzmMQ>
	<xmx:cHkeX5EWoB2wfThUdHOfP-Vq3nQ34sbGpb5ZBzk7nPoGkmp9J0QSbA>
	<xmx:cHkeX-RN_0H1AzM09yVDEXlEhuZTS_ioKKgNPrmCyyiuDsbGndtYkw>
	<xmx:cHkeX-hyOIofdVLEKM50y8faHAh0ZhiT2MEtALXAf_kgL4RKZsxOBQ>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
	[104.172.0.143])
	by mail.messagingengine.com (Postfix) with ESMTPA id B92BD30600A3
	for <blinux-list@redhat.com>; Mon, 27 Jul 2020 02:51:27 -0400 (EDT)
Date: Sun, 26 Jul 2020 23:51:26 -0700 (PDT)
X-X-Sender: chime@chime
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Is the Speakup List Down?
Message-ID: <alpine.DEB.2.23.453.2007262347300.307003@chime>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi All: After posting, I received an error sending. Meanwhile my comments 
were mostly designed for Samuel, so I will paste them in here. They are 
about the DecTalk.
Hi Sam-and-All: In the last several months, I've been still trying to find 
a sample command to increase intonation or excitement. Looking in manuals 
wasn't so helpful, but asking around gave me a clue about another aspect. 
Remember,
over these 16years, I still have many randem times where Speakup drops the 
pitch, rate, and volume. Well, any time I run this command, it happens. 
Hopefully among some of the DecTalk symbols, we will finally know. Now, 
here's this
command
sudo echo "[:np][:dv ri 90 Do I sound more forceful?" >> 
/sys/accessibility/speakup/synth_direct
Back again live, Maybe that dv command knocked everything down?
Now, if we ever can include a tone option for intonation, only insert+7 
and insert+0 ar available, or you could use insert+t or maybe use both 
insert keys for increase/decrease. Some1 told me that a "sync" command in 
DecTalk can create
excitement, but I have not proved that yet. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


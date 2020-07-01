Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 40E7D210306
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 06:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593578200;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RRjI8U85WUmQywV16CoRVdoccMIv7fOAQSiYQktyOFc=;
	b=a64xbJDITwuRvKU0YbOJCBwqPvYDJ9qC0AlWm28BIFfAXb9LUuz5HCNFJX86x119IaqZP1
	LeurT8X+fUG2IqbBVHs0fLPUhFQW1ayqgw9OpjxsWst7Vn1qahgDavcl4CHNezq3STv3Z4
	p08uzX2AbOsRs/CrYfJaFr6xrABGmUY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-UBikgP_CPtOaUZKevxiXwg-1; Wed, 01 Jul 2020 00:36:37 -0400
X-MC-Unique: UBikgP_CPtOaUZKevxiXwg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CB0F1054F90;
	Wed,  1 Jul 2020 04:36:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B41855C1D3;
	Wed,  1 Jul 2020 04:36:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 65D916C9C3;
	Wed,  1 Jul 2020 04:36:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0614aFrO006715 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 00:36:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2CBFE11921B4; Wed,  1 Jul 2020 04:36:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27A7211921B5
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 04:36:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 237DE185A797
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 04:36:13 +0000 (UTC)
Received: from wnew4-smtp.messagingengine.com
	(wnew4-smtp.messagingengine.com [64.147.123.18]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-26-F81fdb9rPyus1gIHIfXCJw-1;
	Wed, 01 Jul 2020 00:36:10 -0400
X-MC-Unique: F81fdb9rPyus1gIHIfXCJw-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id 43DA59CB
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 00:36:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Wed, 01 Jul 2020 00:36:09 -0400
X-ME-Sender: <xms:uBL8Xno6h3VxSXuj0NMWAgw6s-YL4yzcjtpx_8bfCWaO-8y6qBXDyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrtddugdekjecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkfgggtgesthdtredttdervdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhepleekleelkeettdffuedtjeffhfelgedtfeejvdegkeejkeefudduheeg
	iefggfegnecuffhomhgrihhnpegtlhgrrhhirdhnvghtnecukfhppedutdegrddujedvrd
	dtrddugeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
	mheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:uBL8Xhqei4WTQpQYvVZgEyHj2JMVfN-ZKXgZ6w_QxANmdeqfg1U0OQ>
	<xmx:uBL8XkMF1o93pSWas5VgQ5RGXgJdMarfcAzwm2Zr04tMUSLd0Etv9Q>
	<xmx:uBL8Xq7bgb-t8-P047VlRC2HVdTTvmNqK8o-4ceWb4VmbV23M30A6Q>
	<xmx:uBL8XlLTOZeYDFFCU_TENPneew3M3W8VbSw5BC-faVpUqHVYjKfyEJzA9Vo>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
	[104.172.0.143])
	by mail.messagingengine.com (Postfix) with ESMTPA id 4F63C30600A8
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 00:36:08 -0400 (EDT)
Date: Tue, 30 Jun 2020 21:36:07 -0700 (PDT)
X-X-Sender: chime@chime
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: An Unusual Alpine Challenge?
Message-ID: <alpine.DEB.2.23.453.2006302117390.1539674@chime>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi All: I did ask in comp.mail.pine about this, with no responses. I had 
lost quite a lot of text articles which I had been collecting all the way 
back to when I first got on CompuServe in 1994. A great place of finding 
News related wire stories were in Clari.net Usenet groups. Well, Giganews 
still has postings mostly back to 2004, some from 2003. However, we found 
an archive of articles from the 90s which are in .mbox format. I wanted to 
simulate looking at these stories as single articles the way they came off 
the news server, but these .mbox files are sometime 19thousand lines or 
13MB. Sure there is Linux software to split these, but they are not 
maintaining their orriginal article dates. I think the package is git 
mail-split.
So I created a new folder in Alpine, gave it a path where these articles 
are housed, but not only is Alpine still seeing the large .mbox file, but 
Alpine is noticing these as read only sub-directories, which in reality 
they are individual names of Clari news groups.
Can any1 please suggest how better to work with these? I would want to 
aggregate groups of news stories to year related directories, then nuke 
them-and-go on to the next group as you would in an actual news reader. I 
tried naming these files differently thinking I can fool Alpine in to 
rendering them as I was hoping. Thanks so much in advance for any-and-all 
suggestions. There is another more complicate Debian package, mb2mdir  but 
it just gives these files strings of numbers-and-letters.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


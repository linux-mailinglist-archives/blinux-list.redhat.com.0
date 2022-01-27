Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BD549D8BC
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 03:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643252363;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eWEy0xA1tft0hN31jEDtDzJtgjBGzKhYAw27E1XWCXE=;
	b=BCRTtVSZqOa5XCmpcFmEzqGbBMdX5Tx25yNcxg8pxe7MdN2gwKZsGG2QX7rW+kVkG/9XUS
	ZuylssqE6gORGwMcjQoaWoDd7EZcXAPKqXNaOfJX3Vyla6v+KIjTTNHlE2eaJkU1ON8vDr
	k+ZZAdk4oJJYNEWL0GC3OWb22tDP+oo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-85-FenNo9cTPX-ydnSoYH8zpA-1; Wed, 26 Jan 2022 21:59:20 -0500
X-MC-Unique: FenNo9cTPX-ydnSoYH8zpA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 610341083F61;
	Thu, 27 Jan 2022 02:59:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDF6A68D90;
	Thu, 27 Jan 2022 02:59:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F7DF4BB7C;
	Thu, 27 Jan 2022 02:59:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R2x69o016766 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 21:59:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2C1B240885B3; Thu, 27 Jan 2022 02:59:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2817240885B2
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 02:59:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0EE40101A54C
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 02:59:06 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-549-k7R5MiKbOHWFT2ZUe0rfYQ-1; Wed, 26 Jan 2022 21:59:03 -0500
X-MC-Unique: k7R5MiKbOHWFT2ZUe0rfYQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 8D7125C0041
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:59:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Wed, 26 Jan 2022 21:59:03 -0500
X-ME-Sender: <xms:dwryYQLxBU_C_4ddFoF5gJdy8I-ie1GUPrIBX3Vq5g0dWSGekiP6GQ>
	<xme:dwryYQKG3S2nuW0HcWadn1sl-SjZ6YZ4kqjczMDmak5fUl0XuMm5cC7Cobdrob6t9
	8-sZV9aGOnP8JGOGqU>
X-ME-Received: <xmr:dwryYQsz8MoJIQdppG_v_VDZFCQChuTEwsrrk14pgXPM9loVGtX-I-QfAzy3Raf0NYZTA--Jkdg91bblSbV4mK6ZkKrPStmLwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfedvgdehfecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:dwryYdYJKRMoBgkLmpnTquu4-nyIVwW0nFvK7xwQWJnplH9I4X9hZw>
	<xmx:dwryYXY42-ilkLwHRo8y52MVFYF0-fBqdkgSXDSnzABZxJJv2op3Eg>
	<xmx:dwryYZCqv_ux9D772WSqWbU0JJ3N45zSzJvzj1eJ8DIg7NzQvdNBVw>
	<xmx:dwryYR2314uM4L8WEk44msOILT0UoSM93ragr8mbEZuWZE-bELoa2g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 26 Jan 2022 21:59:03 -0500 (EST)
Date: Wed, 26 Jan 2022 18:59:01 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Why do you use Linux? expanded from  Converting text to mp3
In-Reply-To: <Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
Message-ID: <5929a81c-ed88-909b-cd50-ad9db6bf2f62@hubert-humphrey.com>
References: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Karen-and-thanks for an introspective topic. My road to Linux was a slow 
transition. I had my first PC with DOS6 from 1994-97. Got windows95 so I would 
have an easier time playing mp3s, which were fairly new at that time. The 
concept of just being able to mash enter on a highlighted file to play was 
appealing. But a majority of the time I was stilling going to a DOS prompt to 
get in to a shell account to read mail in what was then pine. In 2003 once the 
late Bill Acker helped set me up with DecPC drivers, we tried a duel boot 
system, including first Redhat9 and later Fedora. Because there were so many 
anoying issues with those DecTalk drivers, I found myself going back to windows 
where DecTalk sounded great. Maybe early 2005 got either a newer pc and 
certainly a USB DecTalk, which I still have. 1 night in 2006 a friend from 
HighSchool was here, I tried playing him a Weird Al video, but each time 
Windows Media Player would lockup. I finally just went back in Linux-and-played 
him an audio version. Next time we went from Fedora 6 to 9 we practicly had a 
ceremony when we got rid of windows forever. In 2010 with needing a new PC, I 
switched to Debian, as they have more of the latest packages.
In 2006 I got involved with a local Linux LUG, where I occasionally received 
many hours of valuable asistance-and-even sometimes I was able to help.
Even though I have many struggles with web-sites which I cannot access because 
of the javascript disease, I am still willing to stick with Linux, as once its 
setup, it is a comfortable envirenment.
I have a Chromebook which I almost exclusively only attend Zoom meetings, as 
far as I know, no1 has  written any commandline scripts to run Zoom in a 
non-graphical setting. I also have a Mac but have not really looked in to 
classes at an Apple store, but at least all of these machines have Linux I can 
run.
Just last evening I was trying to help my Wife in windows7 but its practicly a 
foreign language now from win98.
And lastly Karen, Linux provides me so much customization. I have 24 text 
consoles. My Linux expert wrote me software to play-and-record streams with 4 
sound-cards. I think I recorded maybe 10 streams at a time-and-later edited 
them, as well as ajusting levels. So I have `much flexibility in Linux-and-am 
`really happy here at nearly 70 next month. Thanks so much for listening
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


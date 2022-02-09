Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3104B0090
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 23:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644446735;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HuQFRA3ynu8ED+v+1G1avV6IVRqn0B1BaU1NtTggbVI=;
	b=iULDAOo2yrgHAkF7/jIXBzL4zfq7FyaQYABi4xxPv856MP4WKvDAxh35Rl+3HcMWZmatR9
	8cgYqK5v5W2/zs0xR766seITXSQenNrLDvfJu+RvAB+l6xRzBjtYffsnNhtsJWMGPw9F5b
	uoeEuvOKVObtZAAXPeNxFRC3ML7JKVw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-V67nNKs4NG6M1L-50dZ0uQ-1; Wed, 09 Feb 2022 17:45:31 -0500
X-MC-Unique: V67nNKs4NG6M1L-50dZ0uQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79281802925;
	Wed,  9 Feb 2022 22:45:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D7507A22C;
	Wed,  9 Feb 2022 22:45:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16D1D1809CB8;
	Wed,  9 Feb 2022 22:45:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219MjN6s021945 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 17:45:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D0E9A1121334; Wed,  9 Feb 2022 22:45:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC5881121315
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 22:45:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBC98811E76
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 22:45:20 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-604-Cy68BN0QNUmFu_jHmvqvTg-1; Wed, 09 Feb 2022 17:45:19 -0500
X-MC-Unique: Cy68BN0QNUmFu_jHmvqvTg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id BDCF15C0131
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 17:45:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Wed, 09 Feb 2022 17:45:18 -0500
X-ME-Sender: <xms:_kMEYkhmSqqVEld08LSGkcMKyqzltpBUQn8wdr-Qa6xepW8ByxqUPA>
	<xme:_kMEYtBY6Fs83XWNNiJ9g6UlVjbjJSSesBq-e2i6MfZGkcQn39g2usSyXcm9DFTvE
	U1YZzw1_El9OpMZkk8>
X-ME-Received: <xmr:_kMEYsEI2RjphhMZaMWqXRsnYQ7DY_3cKnIUJA2dEMdMAL6nWi_uOcHMz9bDGj0EJj6qgVC6Nube5F3PygOXYiE-iepu8wvU5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddriedtgddtudcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
	thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
	htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
	vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:_kMEYlSMFUeeUS0IO0rK0lPOg8acJtO_g5xBqvuYUsg81lwBGsIAfA>
	<xmx:_kMEYhz88xGbp_upcd1NH1pRSJzuLZ2XA8czeNKjiSNKzdoxZuH8sA>
	<xmx:_kMEYj4cGgzuz_Bmf6Iz4gbUYR-Un4t-t9K4YJztG47xrRBT6IMqyQ>
	<xmx:_kMEYqvV8J2b94Pv57tpKCedErw4-31Hqvn_R4dobAFZfqMM5gpUIg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 9 Feb 2022 17:45:18 -0500 (EST)
Date: Wed, 9 Feb 2022 14:45:17 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Is Youtube-viewer Broken?
Message-ID: <bd935680-f9c0-3efe-8a8-3d3bf0fee08d@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I use this alot. I notice this morning these following errors when 
trying to update the package from a script.
Can't locate Module/Build.pm in @INC (you may need to install the Module::Build 
module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.34.0 
/usr/local/share/perl/5.34.0 /usr/lib/x86_64-linux-gnu/perl5/5.34 
/usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base 
/usr/lib/x86_64-linux-gnu/perl/5.34 /usr/share/perl/5.34 
/usr/local/lib/site_perl) at Build.PL line 6.
BEGIN failed--compilation aborted at Build.PL line 6.
Can't locate Module/Build.pm in @INC (you may need to install the Module::Build 
module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.34.0 
/usr/local/share/perl/5.34.0 /usr/lib/x86_64-linux-gnu/perl5/5.34 
/usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base 
/usr/lib/x86_64-linux-gnu/perl/5.34 /usr/share/perl/5.34 
/usr/local/lib/site_perl) at /home/chime/youtube-viewer/./Build line 41.
BEGIN failed--compilation aborted at /home/chime/youtube-viewer/./Build line 
41.
Can't locate Module/Build.pm in @INC (you may need to install the Module::Build 
module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.34.0 
/usr/local/share/perl/5.34.0 /usr/lib/x86_64-linux-gnu/perl5/5.34 
/usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base 
/usr/lib/x86_64-linux-gnu/perl/5.34 /usr/share/perl/5.34 
/usr/local/lib/site_perl) at /home/chime/youtube-viewer/./Build line 41.
BEGIN failed--compilation aborted at /home/chime/youtube-viewer/./Build line 
41.
Back again live, yes I am in Debian SID-and-yes I run an 
update-and-full-upgrade each day. If these are perl related, please inform on a 
specific command to install either apt, pip, or pip3? Honestly I know nothing 
of installing modules. Thanks so much in advvance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 187A3468C95
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 19:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638728017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BZFPz87RNQqWXUSt3pigdcjtA9iVqcld14DPpuUgQDA=;
	b=J9G2sTWF+eddAPnqf4Sp3Kic5R5R/Y0I7PyvkGsJ3H37w6UTd7pVyy8siOFSHB+p+Sn81c
	U/A9gaNgqAoLkt5EXPYSfEyeFh8vJULdQFKr9jC3T3xtA5nrpG3kb6nDiOVj9TXYj6ZfQ8
	02bPBP3zRv1dMvWYFyMYqhPK6Qj2AqI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-W4uw4FwgPAC6yxWV6SlHhA-1; Sun, 05 Dec 2021 13:13:33 -0500
X-MC-Unique: W4uw4FwgPAC6yxWV6SlHhA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16D9C1898290;
	Sun,  5 Dec 2021 18:13:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F373B60BF1;
	Sun,  5 Dec 2021 18:13:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 694DA1809CB8;
	Sun,  5 Dec 2021 18:13:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5IDP8G014533 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 13:13:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 36BE7141DC57; Sun,  5 Dec 2021 18:13:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32719141DC5D
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 18:13:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4D8D3D59B80
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 18:13:24 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-198-0MdqWSVCNliiNCETs2FJOg-1; Sun, 05 Dec 2021 13:13:23 -0500
X-MC-Unique: 0MdqWSVCNliiNCETs2FJOg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id E92123200681
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 13:13:21 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Sun, 05 Dec 2021 13:13:22 -0500
X-ME-Sender: <xms:QAGtYSep6gArDBfAuE08CYyP0RTJi3C8pYXakH2lJDtP_OHFtbM5sQ>
	<xme:QAGtYcMrzUEuMOJtEKObySxkbt71gjg2mIqmVc6NBhspvzdpp8RRs3nFqSu4MZfdV
	mBnM3ktVqPT4ucZEEA>
X-ME-Received: <xmr:QAGtYTgs0cLV-eJFKmAvw_LNUeQdbEfe4eObpWrwgp_EorlRO2LwGMDTcR7Dmx9eXmy3KC4MFG36lteTeiSloklbYaV8uVRb4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrjedugddutdelucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:QQGtYf-PTXmvzlgYI8NueafHZzt7mMaZDN_sKbp5cctjXBjyS4ZOaQ>
	<xmx:QQGtYestvXKUHrPOoGBTX1Sfm1HtWBEKLvqkm0dusCn2DQmKLETlyw>
	<xmx:QQGtYWFLWHHhVYiovmMs2AKKOl9RvZMkhK6acOmJfqEDi2uXrLc7zw>
	<xmx:QQGtYf7zk8kbKzn_XZeGTaO1o60YbP3IMeLnhRsJjLRGwitexXrfeA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 5 Dec 2021 13:13:20 -0500 (EST)
Date: Sun, 5 Dec 2021 10:13:18 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Useful aliases in .bashrc?
In-Reply-To: <alpine.NEB.2.23.451.2112051219290.29322@panix1.panix.com>
Message-ID: <7f1016d9-c946-9942-39d4-1557c1222095@hubert-humphrey.com>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
	<20211205081607.1b8e272e@bigbox.attlocal.net>
	<16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
	<alpine.NEB.2.23.451.2112051219290.29322@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, since I am in TCSH, now those aliases are in /etc/cshrc
Some of the following were based on commands in DOS which I liked. Here we go 
with 14 of these, will be back on the other side.
alias del             "/bin/rm -f"
alias df              "df  -h "
alias ls              "ls -1"
alias kwota           "du -hs"
alias time            "date +'%A %B %d %r %Z %Y'"
alias nano		"nano -tzxk"
alias type            "more"
alias zip             "zip -v"
alias rd              "sudo /sbin/modprobe  -r speakup_dectlk; sudo /usr/sbin/modprobe  speakup_dectlk; sudo cp /usr/local/bin/characters /sys/accessibility/speakup/i18n/"
alias fm		"lynx -cfg /home/chime/lynx.cfg"
alias fmu		lynx -cfg ~/lynx.cfg -useragent="Safari"
alias frm		"frm | grep -v DELETE | sort"
alias sd-card         "/usr/local/bin/automount_sd_only.sh"
alias all-terms       "python3 /usr/local/bin/all-terms"
Back again live: That last one has to do with as an example, ajusting the beep 
frequency on all my 24 consoles.
And lastly, we have a rather complicated script to run a usenet trn 
news-reader.
#!/bin/sh
# run trn
/usr/bin/trn -J10 -G -x0sml "-X1XD" -Ots -e -M +m -t -h +hfrom +Hnewsgr "$@"
# move any clarinet.* groups to .newsrc.clari
#mv-clari
# re-sort the .newsrc file
sortrc
Back again live, most of these were my ideas but I didn't write them. Thanks 
for listening.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


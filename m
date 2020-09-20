Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5320727140F
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 14:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600603742;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0QRuAqM9bXo7qE9Gd3U3Ue65xtDyP9Hd2Hxs1KeekFw=;
	b=BFqrBToTvUH1YBvkYYrXDIrilc1H6ru0nrCtSldn3XuCvl56P/FZCt3v7WXCMF3OYJbXOm
	Lrdd16BIGrC2OCo1YlNG4y/f7U7vERUR2NXUYVvEf834BrY8qBOtNYyweIBb+ATMS5cTtY
	VAxy5UrOR/BGGtOIgFSH5peHJ7qrgaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-MRE0kTUwNBaklZhjfJw39w-1; Sun, 20 Sep 2020 08:09:00 -0400
X-MC-Unique: MRE0kTUwNBaklZhjfJw39w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 772921074644;
	Sun, 20 Sep 2020 12:08:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB02C5D9CD;
	Sun, 20 Sep 2020 12:08:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 026CC8C7AC;
	Sun, 20 Sep 2020 12:08:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KC69MK020368 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 08:06:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9F3902166BA3; Sun, 20 Sep 2020 12:06:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A4CE2166BA0
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 12:06:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A8F28007D9
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 12:06:06 +0000 (UTC)
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
	[66.111.4.229]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-35-waUMtugbNqyWSmFM1SQlNw-1; Sun, 20 Sep 2020 08:06:03 -0400
X-MC-Unique: waUMtugbNqyWSmFM1SQlNw-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.nyi.internal (Postfix) with ESMTP id AD1B4580186
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 07:58:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Sun, 20 Sep 2020 07:58:50 -0400
X-ME-Sender: <xms:-kNnX_BUwW6uFk0FrjBySd-MAQ38fwe4Bf9DuSO_YLULoQX6H65hFg>
	<xme:-kNnX1jm1o9RFvwrxyLVDy38DnXih3DkYWZQVNwq_NNHlNzhsHajBgyO0yOmyhB9Y
	QUZKNN48md3_vxW2xg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtgdeghecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecuogfuphgrmhfkphdqohhuthculdehtddtmdenucfjug
	hrpehffgfhvffujgfkffggtgesthdtredttdertdenucfhrhhomhepkfhshhgvucevhhhi
	nhihohhkrgcuoehishhhvgestghhihhnhihokhgrrdgtohhmqeenucggtffrrghtthgvrh
	hnpeevffehvedulefgtedtjeevjeekffeuieetfeeuieeuveeukedvteegffefhedujeen
	ucffohhmrghinheprhgvughhrghtrdgtohhmnecukfhppeduleeirdegrdektddrvdenuc
	fuphgrmhfkphepudeliedrgedrkedtrddvnecuufhprghmkfhppfgvthifohhrkhepudel
	iedrgedrkedtrddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
	hfrhhomhepihhshhgvsegthhhinhihohhkrgdrtghomh
X-ME-Proxy: <xmx:-kNnX6l78_EhU2Kdx0UaiFxe6TPrXkeaZhgz72E8p10gI8L2TtzczA>
	<xmx:-kNnXxzpdJhTWIA1yf5Liwqz1ZFlfVUrriDGiqDqA0xKyZ4NztQQOA>
	<xmx:-kNnX0QtSl0N-Y0GzhisTbWdO-wqUeTzQdBLcRbAFoLi6lo_F2MTdw>
	<xmx:-kNnX7dtrT1cPI2qxS9iQc_B8p6OdgdMBDBIZAruu_dcuI09MyTtPA>
Received: from localhost (liquidgw.uz.ac.zw [196.4.80.2])
	by mail.messagingengine.com (Postfix) with ESMTPA id C5DD43280059
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 07:58:49 -0400 (EDT)
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
User-agent: mu4e 1.4.13; emacs 28.0.50
To: blinux-list@redhat.com
Subject: Re: ebook-speaker/UTF-8 long files
In-reply-to: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
Message-ID: <874knsbqxb.fsf@chinyoka.com>
Date: Sun, 20 Sep 2020 13:58:40 +0200
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Also encountered with that experience and had to give up. I am still
trying to figure out  how to read books with ebook speaker myself.

Ishe
On Sunday, 20 September 2020, at 13:47, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> So I just ran into this and was wondering if anyone else has. I've 
> converted ebooks to .txt with ebook-converr and wanted to run them by 
> ebook-speaker. It tells me to wait since it's a UTF-8 file with long 
> phrases and give sme numbers, then does....precisely nothing, boots me 
> back to the terminal with a bell sound...
>
> Any ideas?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


-- 
---------
I. Chinyoka
The only thing worse than being talked about is not being talked about.
----------
Sent from Mu4E with EMACS 26.3 on Linux

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


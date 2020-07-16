Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 85EAE222E1C
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jul 2020 23:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594935811;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=8RkER2ixPD8Z6wH3gXEB43Qj5jIdQN77jBsJ2P9v+Ig=;
	b=PcNdD3EihnBxCViBdwgFFcnolVSc06l7SxEUPp2W8/1Xs70RMxAYYiaTegdx4DB/wMph44
	NDQeFCQTTHD357CiHiIu72u+Y+hMJbdjIKOFl1wEA8KExwDgHO4rbvFlsbRaILMhIGn82B
	h74qyl8m1lG59m5DDfxXEQdq54hPUm4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-mN-RCANiPM2Z2TTChl47Fg-1; Thu, 16 Jul 2020 17:43:29 -0400
X-MC-Unique: mN-RCANiPM2Z2TTChl47Fg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DF5A800462;
	Thu, 16 Jul 2020 21:43:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 577A06FDD1;
	Thu, 16 Jul 2020 21:43:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F325096231;
	Thu, 16 Jul 2020 21:43:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06GLfEHe017704 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Jul 2020 17:41:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3FD8D20A052B; Thu, 16 Jul 2020 21:41:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B16F20A0538
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 21:41:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BCD880CC2B
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 21:41:11 +0000 (UTC)
Received: from sonic310-24.consmr.mail.ne1.yahoo.com
	(sonic310-24.consmr.mail.ne1.yahoo.com [66.163.186.205]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-361-MbmJhb6APD6P-GHHLJUgMQ-1;
	Thu, 16 Jul 2020 17:41:03 -0400
X-MC-Unique: MbmJhb6APD6P-GHHLJUgMQ-1
X-YMail-OSG: MdVIw7kVM1m03OS6HDn7Z8rQ02tmfUMFw..eLyu7UTAMW_h_fr5Ne4mQot3BKs6
	Pn3zbyZdB0Sfbym6LPPZuF8hLRSpgmI6ZO1swjSpDCCt_bZ8ajoLt7Kcsqfp5kOBYPaDcVZ_1r90
	hobqTJ1BtP5.gwX4exIE6tIWCsT8CT.rxtSXngbw2HEPZUkhwdX1QzR_yAduUVGIXhEYocfcg0bg
	fUV5LI5Q3TClTapWWQVXVNaroCpGfmy3r650c2BIckRJ1DpSgqoNLvW9taiKLEshCsxVP5TuHAIr
	uiv2_V.7DI.EL9BpHUBITZGAY_psAgDJYuLDplgTXrK9FMJh7Le0V8yz4KXhdneZyQpPKqQNQ37s
	1dqc5wxeF_tJQM8BNah67ZGnTJll52fi3NEPudx_vO_7IoXfy1kE5cY4Srf30rc5Zhw7WQQ1pwV3
	G5bABIotreDiCLlQCr17v12x5QTc3DkXZjnrvLifPEIa2FhitbD5fxRgMOyQjLz4ErUDhkG35vSB
	w6ALnfwOwiWG.yFRaibc1yuGu0.9BFP21ruEi9Pof.BSIlxmM8JiKyDJzAg0D8xbwF8z81rHS88M
	kzfEOdIQFHC5WwZ66hsh39ANMI2qxagY6IyTh51pJQyp9y0hsd73O3mhsPF67lPV6OAoM22usTp.
	GqXKWuaSUZsmWQSbgOalF4odMO1G6fSMOSG5QBXJ9YhAFxHKgFWH3ef8QcGpzLj1GPsXOqMQs4fe
	BW2dOMnv8BDE4hp3J7TbQ9Ysbo0Zh4Rvv.BjgDq.2dmUO1vrR5J9j1RHS3Et0pnuoWGUHksI5W8u
	8720Bb11zQbEpMW6CaVs3zc0UTmWPHB4QQQAKpzr5.idqVyJn_3GMAuDINKOVloUwxT6l.9R0Gj0
	VlQ2URmmgbacZPSb43FsgVHFeDyfgSxsaQEvKefKdsme_houGd6PsIcJUVVSn_7GGhAUOH0V8Ykl
	96.usqkHzY76LWRhfgGGYVdcACvfFdt96RI1yTnwIPrEL0Cf_m9n1RRGnvtb.yKs5RzxFOv1Sex3
	mzh.aHPv1MuP7c10536Tw7FZrkDTem6W.B9CGLvo_QH2WeUFa_opTgcbxuEIiVqOdHluratXMfsK
	cYCXmvGUFS2_RP2QcPPnxQyAT_HyEQ1.8yxUdd7sGIneHuQowh6qqLik79Sist8VsGndnq.lvRo9
	8utpz.ayGsZJxMT3NQIiAskX3_dQtZpA6JkJdqOFPFlzbiPvADtpmTLaW51iV2QpH2CpmiExSZKH
	gHozeZqPOhpJstEXVLqnKT_mXAmhsoUUbbBvvQyM6krzp3qJxIY6pyHKah1c8Rv.1KcmGJlJdAEH
	XXpWuVeoBaiFVkLi7JN5PbAH9XwugYjRUvp0LZzJv5NgAxrlDu_3W1v0QNLwyysPhmSBgWKhUroZ
	bcfw-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.ne1.yahoo.com with HTTP;
	Thu, 16 Jul 2020 21:41:03 +0000
Received: by smtp416.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 3c9fc2717cd96c4f15e714f04460023e; 
	Thu, 16 Jul 2020 21:41:02 +0000 (UTC)
To: <blinux-list@redhat.com>
Subject: installing speakup on RHEL 7/8
Date: Thu, 16 Jul 2020 14:41:01 -0700
Message-ID: <02d601d65bb9$cd357b80$67a07280$@yahoo.com>
MIME-Version: 1.0
Content-Language: en-us
Thread-Index: AdZbuKyZpfZdoUbjSfawzHyfJLmv9g==
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

Hi there -

 

I am getting a workstation at work that will be running RHEL 7 or 8.  From
what I understand, speakup is not a package in yum, but it is now part of
the kernel staging tree.

 

Does anyone have instructions on how to get speakup installed and running on
RHEL 7 or 8 using software speech?

 

Any help appreciated, thank you very much in advance

 

--David

 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


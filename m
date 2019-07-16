Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C016AFE3
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2019 21:31:00 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 12C873082199;
	Tue, 16 Jul 2019 19:30:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF0075D721;
	Tue, 16 Jul 2019 19:30:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E14014E590;
	Tue, 16 Jul 2019 19:30:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6GJUqZd003259 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jul 2019 15:30:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 246806092D; Tue, 16 Jul 2019 19:30:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx18.extmail.prod.ext.phx2.redhat.com
	[10.5.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D8A760922
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 19:30:50 +0000 (UTC)
Received: from assembling.o2switch.cloud (assembling.o2switch.cloud
	[109.234.163.60])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5C4F6308218D
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 19:30:48 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 522E0100720.AFDBE
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=oOqffWEe30dJ2HAUJjYvRl+P90LvNWGFO4urNagNik4=;
	b=XUSnd++DamXCtONrjIxkEHfZEd
	FdyQXk1+j7jEQ3G68bfBpxHs9mE/SrdsPJ6gkirSfPPKagOv/mIvrMCDSsQYekOpDMevrs7oJpRq3
	Z9bt2OTcqaOlGpIX4BfUqgBgaVIP+nhkQ2nYCXn2BPY1eOCOAdPeyx2xEXJ8vtZz/ILk=; 
Subject: Re: mumble command-line client
To: blinux-list@redhat.com
References: <56E3E288-7D64-44A7-ADD3-078D1C9588D2@gmail.com>
Message-ID: <a237cb06-6b92-4f77-ede4-d11ba76c8647@slint.fr>
Date: Tue, 16 Jul 2019 21:30:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <56E3E288-7D64-44A7-ADD3-078D1C9588D2@gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Greylist: Delayed for 09:27:50 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.47]); Tue, 16 Jul 2019 19:30:49 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]);
	Tue, 16 Jul 2019 19:30:49 +0000 (UTC) for IP:'109.234.163.60'
	DOMAIN:'assembling.o2switch.cloud'
	HELO:'assembling.o2switch.cloud' FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.163.60 assembling.o2switch.cloud 109.234.163.60
	assembling.o2switch.cloud <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.47
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Tue, 16 Jul 2019 19:30:58 +0000 (UTC)

Why not, if someone builds it from source?

Didier

On 16/07/2019 21:14, Linux for blind general discussion wrote:
> Do you think barnard might run in ubuntu?
> 
> --Brian Tew
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

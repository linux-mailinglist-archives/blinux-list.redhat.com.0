Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 050199C8A2
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 07:18:21 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7D3FD3084295;
	Mon, 26 Aug 2019 05:18:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D74A60C80;
	Mon, 26 Aug 2019 05:18:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BE451802218;
	Mon, 26 Aug 2019 05:18:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q5IHKX020617 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 01:18:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A6B25C3FD; Mon, 26 Aug 2019 05:18:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx28.extmail.prod.ext.phx2.redhat.com
	[10.5.110.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 052195C220
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 05:18:14 +0000 (UTC)
Received: from limonade.jabatus.com (limonade.jabatus.com [109.234.165.188])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2C6AD881349
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 05:18:13 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: ss
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=2.602, required 5, autolearn=disabled, IN_BARA_SPAM 2.50,
	KAM_NUMSUBJECT 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 8F83D1009EC.A8997
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=vWwC5TqesdchNfyyt+pMJGTGB3dkE9UJBTSbbYfinxA=;
	b=r9i2RD/0ZrlFQ/pacWHlSSQuas
	Ej2b6Zz0+kSuPuuXcNU2RI/HTGxiGISKF6v6MLd23lyr2jJqx4fDeIzZIi32h5i7MJcgxnJgoWLPV
	357GWXD4ScTnhuTO2sUV5x7rYbYM/QvhnTEcwCv4hLsI9o/riKDem7qPmr4wDhrLNN/8=; 
Subject: Re: latest lynx ANN: lynx2.9.0dev.3
To: blinux-list@redhat.com
References: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
	<Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
	<4F2EC260-5157-43BD-95C3-F3BEFC09CF5E@gmail.com>
	<Pine.LNX.4.64.1908252215290.13997@server2.shellworld.net>
	<CAO2sX31-dortHjXk_pL+ZJW0hTivNvzZAS3z=3P8x66r+JkpSg@mail.gmail.com>
Message-ID: <1d40e76e-bf80-386b-da83-2c7ddf9e6a0e@slint.fr>
Date: Mon, 26 Aug 2019 07:18:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31-dortHjXk_pL+ZJW0hTivNvzZAS3z=3P8x66r+JkpSg@mail.gmail.com>
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
X-Greylist: Delayed for 56:29:10 by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.69]); Mon, 26 Aug 2019 05:18:13 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 05:18:13 +0000 (UTC) for IP:'109.234.165.188'
	DOMAIN:'limonade.jabatus.com' HELO:'limonade.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.165.188 limonade.jabatus.com 109.234.165.188
	limonade.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.69
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Mon, 26 Aug 2019 05:18:19 +0000 (UTC)

As an aside lynx is developed by a single individual, Thomas E. Dickey,
not by hundreds or maybe thousands of people like other web browsers.

And he also develop major other software as you can check on this page:
https://invisible-island.net/
providing a continuous support and maintenance since many, many years.

So, thanks Thomas!

Best,

Didier

On 8/26/19 6:04 AM, Linux for blind general discussion wrote:
> I don't follow the development of any web browser, not even the one I
> spend most of my waking hours in(Firefox), but if HTML5 has been a
> standard since 2012 and Lynx has only had HTML5 support since 2016,
> that still sounds like a rather significant amount of feature lag.
> 
> Not that I'd expect a text-mode browser to stay cutting edge, but it
> does make you wonder how many web sites are one major upgrade away
> from breaking in Lynx and how many web design teams wouldn't even be
> aware it happened.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

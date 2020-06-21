Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id C691A202BE9
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 19:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592761872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BU1IRAU05wkdtg9Lup4XU5o5hOEIGpFyFVkLLKcOG/c=;
	b=GIKh4W+zlozH4ovoX7SRLB9O+mpqTgjN3J6AagbsOlOfTaEaCTPNZoSNH8zRyuRBZQCPJ7
	zVsTvnLNkYgmFjc5J+I/zK0cK9agEb9DezVFGS43GbSujnEsFUpfu2dwMWM2p0KFzt6iQp
	wVFhXSIdEM2toHLyCcjNA6qkgwVDpiY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-_eDy-V4mO5G0hE7If4WaAw-1; Sun, 21 Jun 2020 13:51:10 -0400
X-MC-Unique: _eDy-V4mO5G0hE7If4WaAw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77F64464;
	Sun, 21 Jun 2020 17:51:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2296E5C220;
	Sun, 21 Jun 2020 17:51:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 75CBD1809547;
	Sun, 21 Jun 2020 17:51:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LHoxRf030955 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 13:51:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE2D02157F26; Sun, 21 Jun 2020 17:50:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9C8C2157F23
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 17:50:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 268AE800830
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 17:50:57 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-296-zSu3eYirPImlz7djcnB-LA-1; Sun, 21 Jun 2020 13:50:54 -0400
X-MC-Unique: zSu3eYirPImlz7djcnB-LA-1
Received: by mail-qk1-f179.google.com with SMTP id 80so1782901qko.7
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 10:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=M6Y6uLjcdMgBBLI3Aw+/QfgA64QcnARldFBfn5eNa74=;
	b=DE7W47g/TxrJC4sTuUgSwyjfOVdtT7eDyl00LDnpe0mSg/tR8vEZOjzEc6fyJ4Xk76
	IAn6sISL5TcwYVtMJqgRDAwGPm4XaQsFr9t7xiBrtAl3UoPSShPKen1MFNnF4K8pDJJ+
	bgXmdki4X7WVVBnUrFVJ79A+N7Y+LPhoQVtjNZAzwKdydWXN5JLHV0C7PABWsrNfNgJg
	agSehOB4ov8X42y05FtpLEeJ8pNxMHIQa5k7ofPA4doGi23rf1DxtNSaHnZmeAr9MP2p
	+mR9jN20Ig4SbMJTXOIVAw7pwmkkhQSTpfEmcdKmtYQ4vUtO242BkWVbl0DoY58S2UXR
	aN3A==
X-Gm-Message-State: AOAM532v5zEHJzEoZFm3h4mcEJu/vUQBcs1gsM8ay2SRAgLdSYOyR3eF
	EM7jkbKRXG23eDbx4fpcGQg91hW9+mk=
X-Google-Smtp-Source: ABdhPJw5tdvfpd14B9BOmvdU39RW39y2Hyi80Y+sLISRJ+sYUhYarKGMQjHbzv2ccdQA3bz/3bGbIQ==
X-Received: by 2002:a37:a3c8:: with SMTP id
	m191mr11919623qke.124.1592761853933; 
	Sun, 21 Jun 2020 10:50:53 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::241?
	(2606-a000-111a-8d0a-0000-0000-0000-0241.inf6.spectrum.com.
	[2606:a000:111a:8d0a::241]) by smtp.gmail.com with ESMTPSA id
	n63sm11448460qkn.104.2020.06.21.10.50.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 21 Jun 2020 10:50:53 -0700 (PDT)
Subject: Re: Prospects for an accessible and open version of Android?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
Message-ID: <556d5698-8a61-023f-d40a-1c38aaf9eff4@gmail.com>
Date: Sun, 21 Jun 2020 13:50:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
Content-Language: en-US
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Yeah I think I'll just stick to my Odroid N2, or if I do need something 
smaller, the Raspberry Pi 4 is plenty good enough, and the 8GB model is 
even better. I don't need Intel's spyware any more than I need Google's 
or Apple's COVID tracker crap.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


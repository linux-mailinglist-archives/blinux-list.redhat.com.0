Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 043A74DE1A1
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 20:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647630783;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gM4VeybrEXXPSV/4jrINMGreQp/GWwGw8OV1/uX6OYU=;
	b=J+yNxR1UZF+tvxsASH9UddNe4e9v+pKg2/IORXgqZMPk/cTEQEuYUDor2jZzMCeqc9HMb2
	AF0nmybFzd29VEJCCIMOcLRVQO7fxjrmMawIef26IKI225Zp0ZSpKoZiTxYyhF8AYeXacZ
	eoafAlwYp1EmcdodTMVRSPiNZbwSuzE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-312-4qCh9CnTMveU4sPaDM24cg-1; Fri, 18 Mar 2022 15:12:59 -0400
X-MC-Unique: 4qCh9CnTMveU4sPaDM24cg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0695F18A6584;
	Fri, 18 Mar 2022 19:12:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 67B33C23DC6;
	Fri, 18 Mar 2022 19:12:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CABD4194037D;
	Fri, 18 Mar 2022 19:12:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 18 Mar 2022 15:12:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: OT: alexandria.org
To: blinux-list@redhat.com
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
 <mailman.2947.1647624813.111203.blinux-list@redhat.com>
 <mailman.2978.1647627242.111208.blinux-list@redhat.com>
 <mailman.3015.1647629141.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.3015.1647629141.111206.blinux-list@redhat.com>
Message-ID: <mailman.2961.1647630775.111201.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'll try it out, but slightly OT that I can't ever seem to get new 
results on DDG. If this turns out as good as DDG I could definitely use it


Alexandria.org won't give anywhere near the results of DDG just yet, 
since it's really quite new and is still in early development. But I 
have found that searx-powered sites give better results than DDG, but 
without the Microsoft-powered ads. It seems since Microsoft all but took 
over DDG's operations, placing ads and running the DDG servers on MSN 
IP's, DDG went down hill fast, offering less results and more irrelevant 
results that don't even seem to match the query. My recommendation for 
now is to try alexandria.org first, since its results are fairly limited 
and small in number for now, and then find a site near you on

https://searx.space

that runs one of the latest versions of the searx or searx-ng software. 
The most daring among us may enjoy presearch.org also because it's much 
like DDG, but is not powered by Microsoft in any way other than using 
their API to get Bing results, just as it uses Google to get Google 
results. Like DDG and Searx, Presearch just searches existing search 
engines for now, although they are said to be looking at becoming a real 
search engine at some point. Still, unless you want to brave the ad 
placement that's done via the presearch keyword staking platform, 
Searx-ng and alexandria.org would appear to be the best recommendations 
at this time.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


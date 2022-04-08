Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3125E4FA000
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 01:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649459703;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K+dpZeqPBiMRc4ms2gcicQJfWuhoMDr1B3/nuRffcy8=;
	b=geJJgLJ4GOZn9ICZGEiloygNgRzavHTmbWLAWgB4K2t2UyPntPfLwoyCoUdmPb1kW14Obl
	BN1H+s0dgIJokEuACjXnl4Ftpmx4Ulamgn4QQ2+ty2bfMn3kdH2DbuwIC6srZ8uxJANfpp
	fw1rsfAGfsle6ESa1IGYpbACwfqRMG8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-JVxNdcJvOC23vYo-wbqKzA-1; Fri, 08 Apr 2022 19:14:59 -0400
X-MC-Unique: JVxNdcJvOC23vYo-wbqKzA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4AFD3185A794;
	Fri,  8 Apr 2022 23:14:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 84C41400E873;
	Fri,  8 Apr 2022 23:14:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6F932194034D;
	Fri,  8 Apr 2022 23:14:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 01:13:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: small Introduce of dragonFM
To: blinux-list@redhat.com
References: <mailman.7446.1649447610.111209.blinux-list@redhat.com>
 <mailman.7561.1649448212.111206.blinux-list@redhat.com>
 <mailman.7684.1649448727.111210.blinux-list@redhat.com>
 <mailman.7689.1649453320.111210.blinux-list@redhat.com>
 <mailman.7470.1649453489.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.7470.1649453489.111203.blinux-list@redhat.com>
Message-ID: <mailman.7517.1649459692.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy List,

for the case that the one or other is interested or might want to try as 
well :).
I wrote a small blog post about dragonFM command line filemanager.
It includes a list of features, how to install and a list of shortcuts 
with some documentation.

https://www.patreon.com/posts/64904217

For bugs just let me know. i will try to fix them up.

cheers chrys

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


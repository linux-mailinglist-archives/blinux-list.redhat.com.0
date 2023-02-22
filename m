Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9B869FA55
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 18:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677087818;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3/YrHcQX6GWEIy8pM2dssihk/mVQE+D3Zgd2HQ/X+x8=;
	b=A4xtzl1Vf9eH0WqTEXL7g8WCzWSso8e6H6oKRuptFIRwWtMx3k9Z1dgT8RbxM+2sqoDDh1
	qDf1wbkirhW1H26hhFwULNgQRtBV6RrFAa62oQWAAzpp/jMtRMLXyCWzCTQWh6guq016zO
	IBnuJKM8ByYtPco7z+c1eXTqSUzWaAo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-WTZwPn0aNMuq6NTEZwzcsA-1; Wed, 22 Feb 2023 12:43:34 -0500
X-MC-Unique: WTZwPn0aNMuq6NTEZwzcsA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C195118E0045;
	Wed, 22 Feb 2023 17:43:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4569AC15BA0;
	Wed, 22 Feb 2023 17:43:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D3F3519465A8;
	Wed, 22 Feb 2023 17:43:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 12:38:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
To: blinux-list@redhat.com
References: <mailman.887.1677042909.686535.blinux-list@redhat.com>
 <mailman.988.1677043847.686540.blinux-list@redhat.com>
 <mailman.979.1677044043.686538.blinux-list@redhat.com>
 <mailman.1388.1677078047.686542.blinux-list@redhat.com>
In-Reply-To: <mailman.1388.1677078047.686542.blinux-list@redhat.com>
Message-ID: <mailman.1722.1677087807.686544.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Code Factory was a screen reader development company in the mid to late 
'00's. They made an application for mobile phones called MobileSpeak. I 
thought I remembered reading that they merged with Fonix Corporation, 
the who purchased the company behind the DECTalk software, but I could 
have read incorrectly. I do know that MobileSpeak did use DECTalk 
software by default, but that could have simply been licensed to them 
for use with the screen reader.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


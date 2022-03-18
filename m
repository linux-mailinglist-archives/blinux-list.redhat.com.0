Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B735A4DE0D8
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 19:14:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647627248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8Ui9F5dvNXOx3diUYaMqFP88HiL74S04JTr9jP0FvzE=;
	b=SgJASN5L7VEmGU1TpxY4tSts4E3x4PR9h869V1/+Nt7QEXFOXdSUWFhCH7wVXcpxGPynlP
	QistdqZmYUVEWy41qN7nDjmhhFP7f+T8yQzeLBIV3rnKY4Rp0pN8e/G4JUCi0vPvN9MzV8
	hqpl96eP12Vs3JnWd4wbc3UbIwQlWjs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-425-dD8cGiFPOiSos_XIpzGRQA-1; Fri, 18 Mar 2022 14:14:05 -0400
X-MC-Unique: dD8cGiFPOiSos_XIpzGRQA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B333811E78;
	Fri, 18 Mar 2022 18:14:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 654B04292CE;
	Fri, 18 Mar 2022 18:14:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D379E1940379;
	Fri, 18 Mar 2022 18:14:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 18 Mar 2022 14:13:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: OT: alexandria.org
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
 <mailman.2947.1647624813.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.2947.1647624813.111203.blinux-list@redhat.com>
Message-ID: <mailman.2978.1647627242.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgT25lIGRyYXdiYWNrIHNlZW1zIHRvIGJlIHRoYXQgYWx0LWxlZnQtYXJyb3cgZG9lc24ndCBi
YWNrIG1lIG91dCBvZiBhIApzZWFyY2ggcmVzdWx0IGFzIGl0IGRvZXMgdXNpbmcgRHVja2R1Y2tn
by7CoCBTb21ldGltZXMsIGNvbnRyb2wtdyB3b3JrcyAKaW4gc3VjaCBjYXNlcywgYnV0IGluIHRo
ZXNlIGluc3RhbmNlcyBpdCBicm91Z2h0IG1lIGFsbCB0aGUgd2F5IGJhY2sgdG8gCnRoZSBkZXNr
dG9wLgoKClRyeSBob2xkaW5nIHRoZSBzaGlmdCBrZXkgd2hpbGUgeW91IHByZXNzIHRoZSBlbnRl
ciBrZXkgdG8gYWN0aXZhdGUgYSAKcmVzdWx0IGxpbmsuIFRoaXMgc2hvdWxkIG9wZW4gaXQgaW4g
YSBuZXcgd2luZG93LCBzbyB0aGF0IGNvbnRyb2wrdyB3aWxsIAp0YWtlIHlvdSBiYWNrIHRvIHRo
ZSByZXN1bHQgcGFnZSBpbnN0ZWFkIG9mIHRoZSBkZXNrdG9wLiBIb3BlIHRoaXMgaGVscHMuCgp+
S3lsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=


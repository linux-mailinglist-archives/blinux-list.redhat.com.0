Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 646A04FF0BD
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 09:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649835752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A4vEi4twB1QfhwTMwWtXGwqeha8LMNYIzN4qAan/AAE=;
	b=DKo9gldsu/i3fTaLjkFkECROJAKh0sOhATBaBJzeYZyDkQPBAoYJYqo+ZI/2KpJPztgNJ7
	W3jlJ/9dFVKP3pqwKpdqCJKV2KJVwjq1z8sERd9Yz1/OPTUSXESxGfOWV4xyEWwJyQUXjL
	7UIbMKcHZvCWP8Ex0b1gnLiWc2//KeY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-F8UovSYpPjabM2GsU-hnlg-1; Wed, 13 Apr 2022 03:42:29 -0400
X-MC-Unique: F8UovSYpPjabM2GsU-hnlg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF9453822204;
	Wed, 13 Apr 2022 07:42:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 16A302166B4F;
	Wed, 13 Apr 2022 07:42:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5B67B1940377;
	Wed, 13 Apr 2022 07:42:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 09:41:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
Message-ID: <mailman.7973.1649835743.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgZWRicm93c2UgaXMgbm90IHNvbWV0aGluZyBuZXcsIG15IGZyaWVuZCA7KQoKV2Vic2ll
OiBodHRwczovL2VkZHJvd3NlLm9yZy8KVGhlIHJlcG9zaXRvcnkgaXMgaG9zdGVkIGMvbyBDaHJp
cyBCcmFubm9uOgpodHRwczovL2dpdGh1Yi5jb20vQ01CL2VkYnJvd3NlCkl0IGluY2x1ZGVzIGEg
d2lraToKaHR0cHM6Ly9naXRodWIuY29tL0NNQi9lZGJyb3dzZS93aWtpCgplZGJyb3dzZSBpcyBw
YWNrYWdlZCBmb3Igc2V2ZXJhbCBkaXN0cmlidXRpb25zLgoKSSBoYXZlIHBhY2thZ2VkIHRoZSBs
YXRlc3QgdmVyc2lvbiAoMy44LjIuMSkgZm9yIHVwY29taW5nIFNsaW50NjQtMTUuMCwgc291cmNl
CmZpbGVzIGhlcmU6Cmh0dHBzOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNS4w
L3NvdXJjZS9lZGJyb3dzZS8KCkNhdmVhdDogc3RlZXAgbGVhcm5pbmcgY3VydmUgYWhlYWQuCgpD
aGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKZGlkaWVyYXRz
bGludGRvdGZyCgpMZSAxMy8wNC8yMDIyIMOgIDA4OjA4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSSByZWNlbnRseSByYW4gYWNyb3NzIHRoaXMgaXRl
bSBvbiBIYWNrZXIgTmV3cyAoaHR0cHM6Ly9uZXdzLnljb21iaW5hdG9yLmNvbS8pOgo+IAo+IENv
bW1hbmQgTGluZSBQcm9ncmFtcyBmb3IgdGhlIEJsaW5kCj4gaHR0cDovL3d3dy5la2xoYWQubmV0
L3BoaWxvc29waHkuaHRtbAo+IAo+IC0gUmljaCBNb3JpbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo=


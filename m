Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C78796FF178
	for <lists+blinux-list@lfdr.de>; Thu, 11 May 2023 14:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683807895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=StK1Xv1q6Kah1ubdrPntoDwDQSrEzjsFaZCy/aW0I3k=;
	b=efN3Zt5NjHyIhVO/Xx1ydVnj2TsCPISdTWVuOVAHCCHYozqfwG4RjRDWJRPVq0irSwc0k6
	ydRpzj9+cv7du5Ii59R9i8QuC6qT/R1TywESl/OX0PkRqtxT/URBioyZxQGHZZJsGhhJvb
	R7msgzQcBmvDmCvsULWNNONblxMJ7s0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-17-e6GnRK1mNwyKy-EWEZSCNw-1; Thu, 11 May 2023 08:24:53 -0400
X-MC-Unique: e6GnRK1mNwyKy-EWEZSCNw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C2463801F6C;
	Thu, 11 May 2023 12:24:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CC50DC15BA0;
	Thu, 11 May 2023 12:24:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7070C19451D5;
	Thu, 11 May 2023 12:24:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 11 May 2023 08:24:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
Subject: Help Troubleshooting Speaker Output with BlueYeti USB Mic
Message-ID: <mailman.2043.1683807884.2822856.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgSGksIEkgYW0gdHJ5aW5nIHRvIHRyb3VibGVzaG9vdCB3aHkgSSBhbSBub3QgZ2V0dGluZyBh
bnkgc291bmQgZnJvbSBteSAKc3BlYWtlcnMgd2hlbiBJIGFtIHVzaW5nIG15IEJsdWVZZXRpIFVT
QiBtaWNyb3Bob25lLiBJbiB0aGUgcGF2dWNvbnRyb2wsIApJIHNlZSB0d28gaW50ZXJuYWwgZGV2
aWNlIG9wdGlvbnMsIGJ1dCBuZWl0aGVyIG9mIHRoZW0gd29yayBmb3IgbXkgCnNwZWFrZXJzLiBT
b21ldGltZXMsIEkgd2FudCB0byBzZW5kIGF1ZGlvIGZyb20gb3RoZXIgcHJvZ3JhbXMgdG8gbXkg
CnNwZWFrZXJzLCBidXQgSSBhbSBub3Qgc3VyZSBob3cgdG8gZ28gYWJvdXQgdGhpcy4gQ2FuIGFu
eW9uZSBwcm92aWRlIGFueSAKYXNzaXN0YW5jZSBvciBhZHZpY2Ugb24gaG93IHRvIGZpeCB0aGlz
IGlzc3VlPwoKIMKgVGhhbmsgeW91LgoKU2V0aC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK


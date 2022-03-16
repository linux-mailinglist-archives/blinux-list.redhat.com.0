Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A554DA68D
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 01:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647388823;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=FQe8DC3gOg+MGLDRXxbc5Olt7nrKLkE5oubjW26MUkg=;
	b=D81rlhU8sLhCk55AqGW86c6+xUgAOX4H+BamOBGKARga1kqan2f4mNg/xN3DOd5Ij+xNnR
	Sv/3+A1vETv+1ON2vbs45ztD9ZHd+/JDrq40p+tN7P4vT0aH/c3s1vR9ElbFi26d44MkaS
	8PNBW5Y427ma9fDOu2NXcWerU6aR4zA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-5lN3QSlJMFCXYj2-nTy55Q-1; Tue, 15 Mar 2022 20:00:21 -0400
X-MC-Unique: 5lN3QSlJMFCXYj2-nTy55Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87DDA803D7C;
	Wed, 16 Mar 2022 00:00:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B30E642D441;
	Wed, 16 Mar 2022 00:00:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BEC86193F6DC;
	Wed, 16 Mar 2022 00:00:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 15 Mar 2022 20:00:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: getting started with Liblouis
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
Message-ID: <mailman.2021.1647388814.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R3JlZXRpbmdzIQoKCkknbSB0cnlpbmcgdG8gZmluZCBvdXQgaG93IHRvIHVzZSBMaWJsb3VpcyB0
byB0cmFuc2xhdGUgZG9jdW1lbnRzIGZyb20gCnByaW50IHRvIEJyYWlsbGUuwqAgU3BlY2lmaWNh
bGx5LCBteSB3aWZlIHdvdWxkIGxpa2UgbWUgdG8gZmluZCBvdXQgaG93IAp0byB0cmFuc2xhdGUg
UnVzc2lhbiBkb2N1bWVudHMgaW50byBCcmFpbGxlIG9uZXMuwqAgQXQgdGhlIG1vbWVudCwgCnRo
b3VnaCwgSSBoYXZlbid0IHlldCBsZWFybmVkIGEgY29tbWFuZCB0byBydW4gZm9yIHRyYW5zbGF0
aW5nIAphbnl0aGluZzrCoCB0aGUgTGlibG91aXMgZG9jdW1lbnRhdGlvbiBsb29rcyB0byBoYXZl
IGEgbG90IG9mIHVzZWZ1bCAKbWF0ZXJpYWwsIGJ1dCBJIGNvdWxkIGZpbmQgbm90aGluZyBhYm91
dCBydW5uaW5nIGEgY29tbWFuZCwgd2l0aCAKd2hhdGV2ZXIgYXJndW1lbnRzIGFuZCBvcHRpb25z
IEkgbWlnaHQgbmVlZCwgdG8gY3JlYXRlIGEgQnJhaWxsZSBvdXRwdXQgCmZpbGUgZnJvbSBhIHBy
aW50IGlucHV0IGZpbGUuCgoKSSByZWFkIGFib3V0IGEgY29tbWFuZCBjYWxsZWQgZmlsZTJicmws
IGFwcGFyZW50bHkgcGFydCBvZiBhIHByb2dyYW0gCmNhbGxlZCBMaWJsb3Vpc3V0ZG1sLCBidXQg
dGhhdCBwcm9ncmFtJ3Mgbm90IG9uIG15IHN5c3RlbSBldmVuIHRob3VnaCAKTGlibG91aXMgaXRz
ZWxmIGlzLgoKClNvIGZhciBzZWFyY2hpbmcgdGhlIG5ldCBoYXMgcHJvdmlkZWQgbm8gd2lzZG9t
IGZvciB3aGF0IEkgdGhpbmsgSSBuZWVkIAphdCB0aGlzIGJlZ2lubmluZyBwb2ludC7CoCBJJ2Qg
YmUgZ3JhdGVmdWwgaWYgc29tZWJvZHkgY2FuIHBvaW50IG1lIHRvIApnb29kIGluZm9ybWF0aW9u
IHRoYXQgSSBoYXZlIG1pc3NlZCBzbyBmYXIuCgoKSSBzdHJlc3MgdGhhdCwgYWx0aG91Z2ggbXkg
Z29hbCBpcyB0byBoZWxwIG15IHdpZmUgZ2V0IHNvbWUgUnVzc2lhbiAKQnJhaWxsZSBzbyB0aGF0
IHNoZSBjYW4gcGVyaGFwcyByZXR1cm4gdG8gdGhlIHN0dWR5IG9mIHNvbWV0aGluZyB0aGF0IAp3
YXMgaGVyIHBhc3Npb24gaW4gYWNhZGVtaWEsIEkgbmVlZCByaWdodCBub3cgdG8gc3RhcnQgd2l0
aCB0aGUgdmVyeSAKYmFzaWNzIG9mIGV2ZW4gY3JlYXRpbmcgRW5nbGlzaCBCcmFpbGxlIGZpbGVz
IGZyb20gZG9jdW1lbnRzIEkgaGF2ZS4KCgpJIGhvcGUgSSd2ZSBhc2tlZCBteSBxdWVzdGlvbnMg
aW4gdGhlIHJpZ2h0IHdheS4KCgpUaGFua3MgZm9yIGFueSBpbmZvcm1hdGlvbi4KCgpCZXN0IQoK
QWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==


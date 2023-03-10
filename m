Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F070C6B3858
	for <lists+blinux-list@lfdr.de>; Fri, 10 Mar 2023 09:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678436296;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y2Q4LvdHmU9aewO3IfJ5QkvaoKM7kzFMDS6FO7E7Ptk=;
	b=L4Ltt17BRLGw3O5dOfzeI+V9ddumDw/hM800fNj3CSDhmltamUCu/9EPhYEOy8uWTxsVT8
	39yiYexuCEr0aUJxeer+kC0RZrEibDClhNgGGscxrFyYPyemxk8B55aqxnHMkMrhW0/7Ql
	8+NryBVkoIn7qEb3dGqyssKFmfR+Jqc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-438-Oa96wP3wO4Gt87M-qqruNw-1; Fri, 10 Mar 2023 03:18:12 -0500
X-MC-Unique: Oa96wP3wO4Gt87M-qqruNw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F30523C0E20E;
	Fri, 10 Mar 2023 08:18:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2BC731121318;
	Fri, 10 Mar 2023 08:18:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9131A1946A4C;
	Fri, 10 Mar 2023 08:18:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Mar 2023 08:17:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: XFCE a11Y specific tweaks?
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UXVpY2sgcXVlc3Rpb24uIEkndmUgcHV0IFhGQ0XCoCBvbiBhbiBBcmNoIGluc3RhbGwgb24gYW4g
b2xkIGxhcHRvcCwgCnNpbmNlIGl0J3Mgb25lIHRoYXQgdGFrZXMgdXAgdGhlIGxlYXN0IHNwYWNl
IG91dCBvZiBhbGwgZGVza3RvcHMgYW5kIGlzIApsaWdodHdlaWdodC4KCgpTbyB3aGF0IGFyZSBz
b21lIHN1Z2dlc3RlZCB0aGluZ3MgSSBzaG91bGQgZG8gZnJvbSBhbiBBMTFZIHN0YW5kcG9pbnQ/
IApJJ20gc2V0dGluZyB1cCBzaG9ydGN1dHMgZm9yIHRoaW5ncyBsaWtlIEZpcmVmb3ggb3IgVGh1
bmRlcmJpcmQsIGFuIHNvIApvbi4gSSd2ZSBjaGVja2VkIHRoZSBib3ggZm9yIGFzc2lzdGl2ZSB0
ZWNoLCBJJ3ZlIHNldCBteSAuYmFzaHJjIHVwIApjb3JyZWN0bHkuCgoKU28gd2hhdCBYRkNFIHNw
ZWNpZmljIHRoaW5ncyBkbyBwZW9wbGUgc3VnZ2VzdD8gSSdtIHN0YXJ0aW5nIHRvIGxpa2UgClhG
Q0Ugbm93IEkndmUgZ290IHRoZSBoYW5nIG9mIGl0IGEgbGl0dGxlLCBqdXN0IHdvbmRlcmluZyB3
aGF0IEExMVkgCnRoaW5ncyBJIG5lZWQgdG8gZG8gaW4gb3JkZXIgdG8gZ2V0IHRoZSBsYXN0IGZl
dyBraW5rcyBvdXQgb2YgaXQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=


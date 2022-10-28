Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F346113FA
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 16:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666965959;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kSDwdJakiuKCLQURIwyltnLPlRVBFbOkOSiGIVLTks4=;
	b=JpbBT+wCXtp3IOtKvMFHqEpK5xnLTUzgXfEpk6qmkBgsBjRDJGMM+HVoFYaWzZi99KL/UP
	gPOT9Pu1s6E1wlsIQYlJYMO72ocLKmvATQ/B800SJ0wm4DlxFaomKgYRcaEqwJTaYyuj08
	2cp9dwR5MFZ4fWyrN5dvfX7oUPxozig=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-13-G-KuP8KCOB2Q9SpGd-WQYQ-1; Fri, 28 Oct 2022 10:05:55 -0400
X-MC-Unique: G-KuP8KCOB2Q9SpGd-WQYQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C2DD9595C5;
	Fri, 28 Oct 2022 14:05:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2AF8440C6EC3;
	Fri, 28 Oct 2022 14:05:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AF18B1946A7F;
	Fri, 28 Oct 2022 14:05:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Oct 2022 15:05:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Konsole progress/any good alternatives?
To: blinux-list@redhat.com
References: <mailman.1962.1666446531.3005.blinux-list@redhat.com>
 <mailman.1925.1666447704.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.1925.1666447704.3004.blinux-list@redhat.com>
Message-ID: <mailman.3231.1666965944.3012.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UG9raW5nIGF0IHRoaXMgc2luY2UgSSd2ZSBiZWVuIGdldHRpbmcgb3RoZXIgS0RFIHVwZGF0ZXMs
IGFzaWRlIGZyb20geW91IAppcyB0aGVyZSBhbnlvbmUgZWxzZSBJIGNhbiBjb250YWN0IHRvIGhl
bHAgd2l0aCB0aGlzIGFzIHdlbGwgc2luY2UgSSAKZG9uJ3QgZ2V0IGhvdyB0aGF0IC5jcHAgaXMg
c2V0IGFuZCB3aGF0IHRvIGxvb2sgZm9yLiBUaGUgbGFzdCBjb21taXQgb24gCnRoYXQgLmNwcCBp
cyA2IG1vbnRocyBhZ28sIHNvIGRvIEkgbmVlZCB0byBudWRnZSB0aGF0IGlzc3VlIHRvIGdldCAK
c29tZXRoaW5nIGdvaW5nIGlmIHlvdSdyZSBub3QgYWJsZSB0bz8KCgoKT24gMTAvMjIvMjIgMTU6
MDgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSG93ZHksCj4K
PiBXZWxsIHRoZSBpc3N1ZXMgSSBpZGVudGlmaWVkIGFyZSBvbmx5IHJlbGF0ZWQgdG8gS29uc29s
ZS4gV2l0aG91dCBmaXJlIHRoZSBwcm9wZXIgZXZlbnRzIG9yY2EgaXMgbm90IGFibGUgdG8gcmVh
Y3QuIE9uY2UgdGhvc2UgZ290IGZpeGVkIHdlIGNhbiBvcHRpbWl6ZSBpdC4gSSB3aWxsIHRha2Ug
YSBsb29rIGF0IHRoaXMgaW4gdXBjb21pbmcgZGF5cy4KPgo+IENocnlzCj4KPj4gQW0gMjIuMTAu
MjAyMiB1bSAxNTo0OSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pgo+PiDvu79Pbmx5IG9uZSB3YXkgdG8ga25vdyBm
b3Igc3VyZSwgd29yayBvbiBrZGUgYWNjZXNzaWJpbGl0eSBoYXMgYmVlbiByZWNlbnQKPj4gc28g
bWF5YmUgb3JjYSBjYW4gYmUgYWRqdXN0ZWQgdG8gZXhwbG9pdCB0aGF0IHdvcmsuCj4+Cj4+Cj4+
Cj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hl
cyB0byBiZSB1c2VkIGluCj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4gc29hcCwgYmFsbG90LCBq
dXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4gLUVkIEhvd2RlcnNo
ZWx0IChBdXRob3IsIDE5NDApCj4+Cj4+IC4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK


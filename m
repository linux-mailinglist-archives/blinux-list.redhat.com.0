Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 658A15FB87F
	for <lists+blinux-list@lfdr.de>; Tue, 11 Oct 2022 18:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665506877;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hnoJCZqO2b3jZ1LLMqEB3yF+rt8iwiFCjaJqSIHoK8s=;
	b=c9ca/fQPxwUoPiSdz1cS9m9X8PaKPBrhmD0z97M/xkRKe/sxRY8YzN8Cf88wo+Z+QC/AbC
	goRnVDg39p6nkQXOGx7gCZum9GCGXkNWNwVK0gnLuzKLsl70op8noa7y6ZKzzEM6OXRvAm
	Bw9UiGn0jQMwcDg5gQcCDTgBPL+17Ro=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-607-cJ0J1UfxPfaEQ0Ijs4cC7Q-1; Tue, 11 Oct 2022 12:47:53 -0400
X-MC-Unique: cJ0J1UfxPfaEQ0Ijs4cC7Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D808D88646C;
	Tue, 11 Oct 2022 16:47:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E884B4099B50;
	Tue, 11 Oct 2022 16:47:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B3CC719465A8;
	Tue, 11 Oct 2022 16:47:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 11 Oct 2022 18:47:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: New user question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
 <mailman.6416.1665498310.6074.blinux-list@redhat.com>
In-Reply-To: <mailman.6416.1665498310.6074.blinux-list@redhat.com>
Message-ID: <mailman.7032.1665506868.6077.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U2VlbXMgdG8gbWUgdGhlIHF1ZXN0aW9uIGlzIGFib3V0IExpbnV4IGFzIGEgc2VydmVyIGFuZCBu
b3QgZGVza3RvcC4gU28gCndoZXJlYXMgeW91IG1pZ2h0IGhhdmUgaGFkIHByb2JsZW1zIHdpdGgg
T3JjYSBvciB0aGUgTGludXggZGVza3RvcCBhbmQgCnRob3VnaHQgdGhleSBhcmUgbm90IHByb2R1
Y3Rpb24gcmVhZHksIHRoYXQgaXMgbm90IHdoYXQgdGhlIGd1eSBpcyAKYXNraW5nIGZvci4gSGUg
d2FudHMgdGhlIHVzYWJpbGl0eSBvZiBWdWx0ciB0byBhZG1pbmlzdGVyIGhpcyBzZXJ2ZXIuCgoK
VG8gYW5zd2VyIHlvdXIgcXVlc3Rpb24sIFZ1bHRyIGlzIGEgVlBzLiBBcyBzdWNoLCB5b3UgYXJl
IGV4cGVjdGVkIHRvIAprbm93IGhvdyB0byBkbyBzb21lIGJhc2ljIExpbnV4IHN5c2FkbWluIHdv
cmsgb24geW91ciBvd24gc3VjaCBhcyAKaW5zdGFsbGluZyBub3Qgb25seSB0aGUgbWFpbiBvcGVy
YXRpbmcgc3lzdGVtLCBidXQgZXZlbiBtYWludGFpbmluZyB0aGUgCnN5c3RlbSB0aHJvdWdoIHNv
ZnR3YXJlIHBhY2thZ2UgbWFuYWdlbWVudC4gSSBhZHZpc2UgdGhhdCBldmVuIGlmIHlvdSAKaGF2
ZSB1bmR5aW5nIGxvdmUgZm9yIFdpbmRvd3MsIHlvdSBpbnZlc3Qgc29tZSB0aW1lIGluIGxlYXJu
aW5nIGFib3V0IAp0aGUgZGlzdHJvIHlvdSB3YW50IHRvIHJ1bi4gQmUgaXQgRGViaWFuIG9yIFJl
ZCBIYXQgb3IgYW55IG9mIHRoZWlyIApkZXJpdmF0aXZlcywgdGFrZSBzb21lIHRpbWUgdG8gZWR1
Y2F0ZSB5b3Vyc2VsZiBhYm91dCB0aGUgd2ViIHNlcnZlcnMgCnN1Y2ggYXMgQXBhY2hlIGFuZCBO
Z2lueCwgc2VjdXJpdHkgYXJvdW5kIHNlcnZlciBhZG1pbmlzdHJhdGlvbiwgU1NIIGFuZCAKbG9n
aW5zIHNlY3VyZWx5IHdpdGggUHVUVFkgb24gV2luZG93cy4KCgpBbnl3YXksIG90aGVycyB3aWxs
IGNoaW1lIGluLgoKClRoZSBFdWNsaWRpYW4KCgoKT24gMTEvMTAvMjAyMiAxNjoxOSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBTdGV2ZSwKPgo+IE90aGVy
IHVzZXJzIG1pZ2h0IG5vdCBhZ3JlZSB3aXRoIG1lLCBidXQgSSdtIHRhbGtpbmcgYWJvdXQgdGhl
IAo+IGV4cGVyaWVuY2VzIEkgaGFkLiBJJ20gYSBkZXZlbG9wZXIgdG9vLCBhbmQgTGludXggaXMg
YSBkYWlseSByb3V0aW5lIAo+IGZvciBtZS4gT3IgSSB3b3VsZCBzYXkgSSBjYW4ndCBsaXZlIHdp
dGhvdXQgYSBMaW51eCBzZXJ2ZXIg8J+Yigo+Cj4gSSBoYWQgdHJpZWQgZGlmZmVyZW50wqAgRGlz
dHJvcywgYnV0IG5vbmUgb2YgdGhlbSB3b3JrZWQgZm9yIG1lLiAKPiBFc3BlY2lhbGx5IEkgTWlz
cyB0aGUgTlZEQSBhbmQgaXRzIGZlZWwgb24gTGludXguIFllcywgdGhlcmUgaXMgT3JjYSAKPiBl
eGlzdCwgYnV0IHRoYXQncyBub3QgcHJvZHVjdGlvbiByZWFkeSBJIGZlZWwuIEJ1dCB0aGF0J3Mg
bXkgCj4gb2JzZXJ2YXRpb24gb3RoZXJzIGhhdmUgdGhlaXIgZXhwZXJpZW5jZXMgdG9vIPCfmIoK
Pgo+IE5vdywgd2hhdCBJJ20gdXNpbmcgcGVyc29uYWxseSBpcyBJIGhhdmUgd2luZG93cyAxMCBQ
cm8gYW5kIFZNV2FyZSAKPiBwbGF5ZXIgMTYgKE5vbi1Db21tZXJjaWFsIFZlcnNpb24pLgo+Cj4g
SSd2ZSBtYWRlIGEgVk0gdXNpbmcgRGViaWFuIDExLjMgYW5kIGNvbmZpZ3VyZWQgaXQgYWNjb3Jk
aW5nIHRvIG15IAo+IG5lZWRzIGFuZCBjaG9pY2VzLiBUaGVuLCBJIGVuYWJsZWQgU1NIIGFjY2Vz
cyBpbiB0aGUgVk0gYW5kIG5vdyBjYW4gCj4gZWFzaWx5IHVzZSBpdCBvdmVyIFNTSCBvbiBteSBX
aW5kb3dzIENvbW1hbmQgUHJvbXB0IGFuZCBTRlRQIHdpdGggRmlsZSAKPiBaaWxsYS4KPgo+IEFu
ZCB0aGlzIHdvcmtzIGxpa2UgYSBjaGFybS4KPgo+IENoZWVycywKPgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==


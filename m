Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 384EC65F69A
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 23:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672957271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Jvuz2zAcmGEBvlUb+V5KU1YWZ898hzDiv03D5MKKxTw=;
	b=TE+pwIzS4zZcI2a1M0Y9mnJKuiw1fO85dO499CAlA7ZHvnK1bq8Hd9oUJ36/RHVvd7AP6s
	gZqwVgGh74giwZJWdqmSH7uTxAE6u3h0s4KoADeSYGmWyGFTe33F/z0GuGTaY1nZQvOeUm
	/rd+Hv4xfqjeIHF9gXdDblD7d0W1tvE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-332-Hh45JEqtNpyCmJnlMsiNag-1; Thu, 05 Jan 2023 17:21:04 -0500
X-MC-Unique: Hh45JEqtNpyCmJnlMsiNag-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F6A3101A521;
	Thu,  5 Jan 2023 22:21:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7AF5F53A0;
	Thu,  5 Jan 2023 22:21:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1B6A719465A0;
	Thu,  5 Jan 2023 22:21:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Jan 2023 23:20:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: Speech-dispatcher problem
To: blinux-list@redhat.com
References: <mailman.3123.1672954986.2515665.blinux-list@redhat.com>
In-Reply-To: <mailman.3123.1672954986.2515665.blinux-list@redhat.com>
Message-ID: <mailman.3118.1672957260.2515662.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpsZXQncyBmaW5kIHVuZGVyIHdoaWNoIHVzZXIgb3JjYSB3YXMgc3RhcnRlZCwgbWF5
YmUgbm90IHlvdS4KClRoaXMgY29tbWFuZCBzaG91bGQgdGVsbCB5b3UgdGhhdDoKaWQgLW51IDUw
MAoKSSBhc3N1bWUgdGhhdCB5b3Ugb3duIG51bWVyaWMgaXMgYXQgbGVhc3QgMTAwMCwgY2hlY2sg
d2l0aDoKaWQgLXUKCkNoZWVycywKLS0gCkRpZGllcgpkaWRpZXJhdHNsaW50ZG90ZnIKCkxlIDA1
LzAxLzIwMjMgw6AgMjI6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPiBMYXJzIGhlcmUuCj4gCj4gQWZ0ZXIgdXBncmFkaW5nIGZyb20gRmVkb3JhIDM1
IHRvIDM2LCBJIGhhdmUgbm8gc3BlZWNoIGluIFguIE5vciBkb2VzCj4gc3BkLXNheSBoZWxsbyBz
YXlzIG5vdGhpbmcuIFB1bHNlYXVkaW8gaXMgcnVubmluZyBhcyBzeXN0ZW0gZGFlbW9uLgo+IFdo
ZW4gcmVkaXJlY3RpbmcgbG9ncyB0byBzdGRvdXQsIEkgZ2V0IEVycm9yOiBDYW4ndCBjb25uZWN0
IHRvIHVuaXgKPiBzb2NrZXQgL3J1bi91c2VyLzUwMC9zcGVlY2gtZGlzcGF0Y2hlci9zcGVlY2hk
LnNvY2ssIGNvbm5lY3Rpb24gcmVmdXNlZC4KPiAKPiBTdGFydGluZyB0aGUgc3BlZWNoLWRpc3Bh
dGhjZXIgc2VydmVyIG1hbnVhbGx5IGdpdmVzOgo+IAo+IEVycm9yOiBNb2R1bGUgcmVwb3J0ZWQg
ZXJyb3IgaW4gcmVxdWVzdCBmcm9tIHNwZWVjaGQgKGNvZGUgM3h4KToKPiAzMDAtT3BlbmluZyBz
b3VuZCBkZXZpY2UgZmFpbGVkLiBSZWFzb246IENhbm5vdCBvcGVuIHBsdWdpbiBzZXJ2ZXIuCj4g
ZXJyb3I6IGZpbGUgbm90IGZvdW5kLgo+IAo+IFdoYXQgZG9lcyB0aGF0IG1lYW4sIGFuZCBob3cg
ZG8gSSBmaXggaXQ/Cj4gCj4gVGhhbmtzIGluIGFkdmFuY2UKPiBMYXJzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==


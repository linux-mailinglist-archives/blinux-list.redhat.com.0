Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5444B6D8FC2
	for <lists+blinux-list@lfdr.de>; Thu,  6 Apr 2023 08:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680764034;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NRHBEIsF5rK2qJa0gopvjtQbiqBB9o6DRUkNN/i0Q20=;
	b=h4mWn8rctAJBhwkou5w3PSQEF6OMB2wSnSk0jxkwlRvJHuf7KAG3aiBc/Lq26JtK2/Hu6v
	QVFTex3GrOj4VIJR5pkYXTw7AHoZFpnaCLwSYNcriSMVuObDCO7K28cBQON+ybULyYKO6j
	l0wU2SGeWxgZH63VabGSgg8wb0/CW5Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-645-5stZ5qVDO-2TLMeABwLT6w-1; Thu, 06 Apr 2023 02:53:52 -0400
X-MC-Unique: 5stZ5qVDO-2TLMeABwLT6w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 392CF3C0DDB3;
	Thu,  6 Apr 2023 06:53:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DEF48140E94F;
	Thu,  6 Apr 2023 06:53:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 18A2319465A2;
	Thu,  6 Apr 2023 06:53:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 23:53:35 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1949.1680706766.558770.blinux-list@redhat.com>
 <mailman.2039.1680707830.558774.blinux-list@redhat.com>
 <mailman.2141.1680708565.558772.blinux-list@redhat.com>
 <mailman.2157.1680711899.558772.blinux-list@redhat.com>
 <mailman.2249.1680721115.558766.blinux-list@redhat.com>
 <mailman.2197.1680724354.558775.blinux-list@redhat.com>
In-Reply-To: <mailman.2197.1680724354.558775.blinux-list@redhat.com>
Message-ID: <mailman.2210.1680764024.558771.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gbm90IHN1cmUgaWYgeW91IGNhbiB1c2Ugb3JjYSBvbiB3c2wyCgpIYW5rCgoKT24gNC81
LzIwMjMgMTI6NTIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSGksCj4KPiBhbnN3ZXIgaW4gbGluZS4KPgo+IExlIDA1LzA0LzIwMjMgw6AgMjA6NTgsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBUaGUgb3RoZXIg
aXNzdWUgd2l0aCBhcmNoIGlzIHRoYXQgaXQgZG9lcyBub3Qgc3VwcG9ydCBzZWN1cmUgYm9vdCBh
bGwgdGhvdWdodCB0bwo+IGJlIGZhaXIsIHNsaW50IGRvZXNu4oCZdCBlaXRoZXIuCj4KPiBUaGlz
IGlzIGNvcnJlY3QuIEJ1dCBpZiB1c2luZyBXU0wyIGluIFdpbmRvd3MgeW91IGNhbiBkb3dubG9h
ZCBhbiAodW5vZmZpY2lhbCkKPiBBcmNoIFdTTCBmcm9tIHRoZSBNaWNyb3NvZnQgU3RvcmUuCj4g
TGlua3M6Cj4gaHR0cHM6Ly93d3cubWljcm9zb2Z0LmNvbS9lbi11cy9zZWFyY2gvc2hvcC9hcHBz
P3E9bGludXgKPiBodHRwczovL2FwcHMubWljcm9zb2Z0LmNvbS9zdG9yZS9kZXRhaWwvYXJjaC13
c2wvOU1aTk1OS1NNNzNYP2hsPWVuLXVzJmdsPXVzCj4KPiBJIGRpZG4ndCB0cnksIG5vdCBoYXZp
bmcgYSBXaW5kb3dzIGluc3RhbGxhdGlvbgo+IEEgd29ya2Fyb3VuZCBpcyB0byBydW4gb25lIG9m
IHRoZSBzeXN0ZW0gaW4gYSB2aXJ0dWFsIG1hY2hpbmUuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4g
ZGlkaWVyYXRzbGludGRvdGZyCj4KPj4gTWF0dGhldwo+Pgo+Pj4gT24gQXByIDUsIDIwMjMsIGF0
IDEyOjI0IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+PiBMZSAwNS8wNC8yMDIzIMOgIDE3OjI5LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+PiBBcyBmb3Igd2hh
dCBJIHVzZSBvbiBhIGRhaWx5IGJhc2lzPwo+Pj4+IGkzIGZvciBhIHdtCj4+Pj4gRmlyZWZveCBm
b3IgYSBicm93c2VyCj4+Pj4gUGlkZ2luIGZvciBJTS9JUkMgYW5kIHNvIG9uCj4+Pj4gVGV4dCBl
ZGl0b3JzCj4+Pj4gS29kaSBmb3IgYSBtZWRpYSBjZW50ZXIKPj4+PiBtcHYgZm9yIHBsYXlpbmcg
dGhpbmdzIGluIHRoZSB0ZXJtaW5hbC4KPj4+IEZvciB5b3VyIGluZm9ybWF0aW9uIGFsbCBvZiB0
aGVtIGFyZSBpbmNsdWRlZCBpbiBTbGludCB3aXRoIG9uZSBleGNlcHRpb246IGtvZGkKPj4+Cj4+
PiBEaWRpZXIKPj4+IGRpZGllcmF0c2xpbnQuZnIKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0CgotLSAKVGhpcyBlbWFpbCBoYXMgYmVlbiBjaGVja2VkIGZvciB2
aXJ1c2VzIGJ5IEFWRyBhbnRpdmlydXMgc29mdHdhcmUuCnd3dy5hdmcuY29tCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==


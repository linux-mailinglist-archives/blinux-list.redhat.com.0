Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BE44B0133
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 00:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644449274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VkJnQ47ZjE8nQZxabGp9N83YYuYnq7utYKvIFXfds4E=;
	b=Adm8ZU7zXjCatYiZTGrALtwflMKhsWC7Ej5ylsORSgtUUXVmXO0i1y/e8pEB1waN0IZJmY
	PeQ7+TJwJXthlJFX7dqQZrKdm3gxbC50iYjeyvcx7JST6TD7QO/uQsuDwlL0B3uh0peDEv
	bb8bak3oUhTvJGvH9rzG2WFluRJAygc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-645-nPefk2o7PJ-6lSyhPFoMww-1; Wed, 09 Feb 2022 18:27:51 -0500
X-MC-Unique: nPefk2o7PJ-6lSyhPFoMww-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23D7A83DD21;
	Wed,  9 Feb 2022 23:27:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABAF0519C4;
	Wed,  9 Feb 2022 23:27:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37E3C1809CB8;
	Wed,  9 Feb 2022 23:27:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219NLUZA025460 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 18:21:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 45D65401E79; Wed,  9 Feb 2022 23:21:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41D0E401E78
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 23:21:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A78A28EE166
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 23:21:30 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-554-ROsVVzU0NYGHvHtw2YbVeA-1;
	Wed, 09 Feb 2022 18:21:27 -0500
X-MC-Unique: ROsVVzU0NYGHvHtw2YbVeA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 87BCA242CE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 23:21:15 +0100 (CET)
Message-ID: <b767e62d-8e12-46e2-b412-fc376ae8b073@slint.fr>
Date: Thu, 10 Feb 2022 00:21:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.0
Subject: Re: Is Youtube-viewer Broken?
To: blinux-list@redhat.com
References: <bd935680-f9c0-3efe-8a8-3d3bf0fee08d@hubert-humphrey.com>
In-Reply-To: <bd935680-f9c0-3efe-8a8-3d3bf0fee08d@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219NLUZA025460
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hpbWUsCgpub3QgYSBkaXJlY3QgYW5zd2VyIHRvIHlvdXIgcXVlc3Rpb24gYnV0IEkgcmVj
b21tZW5kIHVzaW5nIGluc3RlYWQgcGlwZS12aWV3ZXIsCmFsc28gbWFpbnRhaW5lZCBieSB0cml6
ZW46IGh0dHBzOi8vZ2l0aHViLmNvbS90cml6ZW4vcGlwZS12aWV3ZXIsIHdoaWNoIGRvZXNuJ3QK
bmVlZCBhIFlvdVR1YmUgQVBJIGtleS4KCkFsc28gSSBzdWdnZXN0IHRvIHN3aXRjaCBmcm9tIHlv
dXR1YmUtZGwgdG8geXQtZGxwIHdoaWNoIGNhbiBkbyB0aGUgc2FtZSBhbmQKbW9yZS4gaWYgcHJl
c2VudCBpdCBpcyBhbHNvIHVzZWQgYXMgZG93bmxvYWRlciBieSBkZWZhdWx0IGluIHJlY2VudCB2
ZXJzaW9ucyBvZiBtcHYuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1h
aW50YWluZXIKCkxlIDA5LzAyLzIwMjIgw6AgMjM6NDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBBbGw6IEkgdXNlIHRoaXMgYWxvdC4gSSBub3Rp
Y2UgdGhpcyBtb3JuaW5nIHRoZXNlIGZvbGxvd2luZyBlcnJvcnMgd2hlbgo+IHRyeWluZyB0byB1
cGRhdGUgdGhlIHBhY2thZ2UgZnJvbSBhIHNjcmlwdC4KPiBDYW4ndCBsb2NhdGUgTW9kdWxlL0J1
aWxkLnBtIGluIEBJTkMgKHlvdSBtYXkgbmVlZCB0byBpbnN0YWxsIHRoZSBNb2R1bGU6OkJ1aWxk
Cj4gbW9kdWxlKSAoQElOQyBjb250YWluczogL2V0Yy9wZXJsIC91c3IvbG9jYWwvbGliL3g4Nl82
NC1saW51eC1nbnUvcGVybC81LjM0LjAKPiAvdXNyL2xvY2FsL3NoYXJlL3BlcmwvNS4zNC4wIC91
c3IvbGliL3g4Nl82NC1saW51eC1nbnUvcGVybDUvNS4zNAo+IC91c3Ivc2hhcmUvcGVybDUgL3Vz
ci9saWIveDg2XzY0LWxpbnV4LWdudS9wZXJsLWJhc2UKPiAvdXNyL2xpYi94ODZfNjQtbGludXgt
Z251L3BlcmwvNS4zNCAvdXNyL3NoYXJlL3BlcmwvNS4zNAo+IC91c3IvbG9jYWwvbGliL3NpdGVf
cGVybCkgYXQgQnVpbGQuUEwgbGluZSA2Lgo+IEJFR0lOIGZhaWxlZC0tY29tcGlsYXRpb24gYWJv
cnRlZCBhdCBCdWlsZC5QTCBsaW5lIDYuCj4gQ2FuJ3QgbG9jYXRlIE1vZHVsZS9CdWlsZC5wbSBp
biBASU5DICh5b3UgbWF5IG5lZWQgdG8gaW5zdGFsbCB0aGUgTW9kdWxlOjpCdWlsZAo+IG1vZHVs
ZSkgKEBJTkMgY29udGFpbnM6IC9ldGMvcGVybCAvdXNyL2xvY2FsL2xpYi94ODZfNjQtbGludXgt
Z251L3BlcmwvNS4zNC4wCj4gL3Vzci9sb2NhbC9zaGFyZS9wZXJsLzUuMzQuMCAvdXNyL2xpYi94
ODZfNjQtbGludXgtZ251L3Blcmw1LzUuMzQKPiAvdXNyL3NoYXJlL3Blcmw1IC91c3IvbGliL3g4
Nl82NC1saW51eC1nbnUvcGVybC1iYXNlCj4gL3Vzci9saWIveDg2XzY0LWxpbnV4LWdudS9wZXJs
LzUuMzQgL3Vzci9zaGFyZS9wZXJsLzUuMzQKPiAvdXNyL2xvY2FsL2xpYi9zaXRlX3BlcmwpIGF0
IC9ob21lL2NoaW1lL3lvdXR1YmUtdmlld2VyLy4vQnVpbGQgbGluZSA0MS4KPiBCRUdJTiBmYWls
ZWQtLWNvbXBpbGF0aW9uIGFib3J0ZWQgYXQgL2hvbWUvY2hpbWUveW91dHViZS12aWV3ZXIvLi9C
dWlsZCBsaW5lIDQxLgo+IENhbid0IGxvY2F0ZSBNb2R1bGUvQnVpbGQucG0gaW4gQElOQyAoeW91
IG1heSBuZWVkIHRvIGluc3RhbGwgdGhlIE1vZHVsZTo6QnVpbGQKPiBtb2R1bGUpIChASU5DIGNv
bnRhaW5zOiAvZXRjL3BlcmwgL3Vzci9sb2NhbC9saWIveDg2XzY0LWxpbnV4LWdudS9wZXJsLzUu
MzQuMAo+IC91c3IvbG9jYWwvc2hhcmUvcGVybC81LjM0LjAgL3Vzci9saWIveDg2XzY0LWxpbnV4
LWdudS9wZXJsNS81LjM0Cj4gL3Vzci9zaGFyZS9wZXJsNSAvdXNyL2xpYi94ODZfNjQtbGludXgt
Z251L3BlcmwtYmFzZQo+IC91c3IvbGliL3g4Nl82NC1saW51eC1nbnUvcGVybC81LjM0IC91c3Iv
c2hhcmUvcGVybC81LjM0Cj4gL3Vzci9sb2NhbC9saWIvc2l0ZV9wZXJsKSBhdCAvaG9tZS9jaGlt
ZS95b3V0dWJlLXZpZXdlci8uL0J1aWxkIGxpbmUgNDEuCj4gQkVHSU4gZmFpbGVkLS1jb21waWxh
dGlvbiBhYm9ydGVkIGF0IC9ob21lL2NoaW1lL3lvdXR1YmUtdmlld2VyLy4vQnVpbGQgbGluZSA0
MS4KPiBCYWNrIGFnYWluIGxpdmUsIHllcyBJIGFtIGluIERlYmlhbiBTSUQtYW5kLXllcyBJIHJ1
biBhbiB1cGRhdGUtYW5kLWZ1bGwtdXBncmFkZQo+IGVhY2ggZGF5LiBJZiB0aGVzZSBhcmUgcGVy
bCByZWxhdGVkLCBwbGVhc2UgaW5mb3JtIG9uIGEgc3BlY2lmaWMgY29tbWFuZCB0bwo+IGluc3Rh
bGwgZWl0aGVyIGFwdCwgcGlwLCBvciBwaXAzPyBIb25lc3RseSBJIGtub3cgbm90aGluZyBvZiBp
bnN0YWxsaW5nIG1vZHVsZXMuCj4gVGhhbmtzIHNvIG11Y2ggaW4gYWR2dmFuY2UKPiBDaGltZQo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0


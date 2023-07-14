Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9585175396D
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jul 2023 13:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689333725;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=akbvp9D1qf8Gwkb6YooDS3e7Bl1mttO+g0l7MNe5Gzk=;
	b=HQdGvmIUES7NJtUC9kGoMrWaTwCTIKH8EPwVlochMINe8sZTkCHgY762stUNFpuP+mDenv
	IXqLs7v4yRTsdzS/ttOnxAG/PWMcF7A2WEOFypn9nUU9feyEfySBGagAPR6RKz+cjOO0zH
	nu+Ledd1O+a5ascNE1s5aqMa6Mcv6E0=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-KcM09XYkNDyvEg_vNAv8xA-1; Fri, 14 Jul 2023 07:22:04 -0400
X-MC-Unique: KcM09XYkNDyvEg_vNAv8xA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6956F2823806;
	Fri, 14 Jul 2023 11:22:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0EB8040C2063;
	Fri, 14 Jul 2023 11:21:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 62B5A19465B3;
	Fri, 14 Jul 2023 11:21:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 14 Jul 2023 13:16:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Slint for beginners?
To: blinux-list@redhat.com
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
 <mailman.24.1689262689.110736.blinux-list@redhat.com>
 <mailman.18.1689263767.110742.blinux-list@redhat.com>
 <mailman.39.1689264158.110736.blinux-list@redhat.com>
 <mailman.65.1689275575.110739.blinux-list@redhat.com>
In-Reply-To: <mailman.65.1689275575.110739.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:cqgZzlxvrzc=;YwkkA9TVuOZdNTno6n2iMA6JaJD
 Bc0WCrYBWwyRMKjT9CZTJP9koSlHP4FqFHyPrOYXXK5vXMJ8v3X4Q0n1V8gWXQe1wXqQvP85e
 8MgbWm9oF6W3KXZEcnBL1NCca2oxRH4Dm/y915Ib0W74jwaV7ulUG8+uiy07vsKYjcO+Yu6Rd
 4HGq5CRDITRXlxoFd61jtN+JHgX0RdBsGfF7cSy6olKLnElC53ZnsaIT2MIF54f9B1l17CZds
 Ux9LQp46G2li7OXJbrOSyZitdclDNTdeN34OdAi4Pm+gGmDhuTN0Bx0TzAnHsewK5EICnbuvm
 TNeru8dwns3ZjxcZEoxE/Kr6Reotsx+UIOS/0b947VErEWv04/FTuJ4kVHYgDCNIuCHY6PTA1
 FApNFzD2iXWFj/izaip3jKlAEenDKt0CUz8TSBnjAcB3S/R1C502/0gp9YXhv8F/nkQhWjDDI
 6uSdJUo5j/JmOL+sjagwPI3RzAGmvPmp+eX/KnXJHq0cRGi6vrVy+7W7rYoKuujq/yoYH8GOY
 dHsVAltNd/Bh5TOh25L3Hn21I5FxHcyVgszyZnZ/NAN/BcInfBCO/L0Tw3H33aevdGRUOQhNu
 yV/66m6vuxD4PvLjnur55IKiprvqpyFdm26ZKANCubans9TCJU2zB5EI1WrghS33Yqda/Ef2Q
 M9NQ0Vwxz1qRKsuc/7HGrFDAuXyU4uWmRf7N0WKLICt1W7cA8RMDunB5tV7siytkmzxf2dkoa
 227R1Uswlb96lX0tA8Sn5FMcSpGgY+rXso1HA+BBk2a9NxDHNLp88WCHk31OCfln/i3FjV1kA
 fh/6ukG36dhdj7rXZUogrSKPyrp03kls/kUKQ5fM3T0O/jjXPYt6fCXrgHM+dUWMZF9L6R1bF
 hLqWrF53FZ17nF0xj9A7wNYXLFcQLhjGai//ejk47bGfSNvVXWs8/OrWsR8xeyknsHmQVIaBv
 INv+yQ==
Message-ID: <mailman.621.1689333717.110736.blinux-list@redhat.com>
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
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R2kgSG93YXJkLAppZiB5b3Ugd29ya2VkIHdpdGggRE9TLCB0aGVuIHlvdSBrbm93IHdoYXQgYSBj
b25zb2xlIGFrYSB0ZXJtaW5hbCBpczogWW91IHdvcmtlZCBvbiBpdC4KVGhlIERPUyB1c2VyIGlu
dGVyZmFjZSB3YXMgY29tcGxldGVseSB0ZXh0IG9ubHkgc2NyZWVuIGFrYSBkaXNwbGF5IGFzIG91
dHB1dCBhbmQgYSBrZXlib2FyZCBhcyBpbnB1dC4KClRoZSBzdWNjZXNzZnVsIGdyYXBoaWNhbCB1
c2VyIGludGVyZmFjZSBtYWRlIG9mIHBpeGVscyBha2EgZG90cyBvZiBjb2xvciBjYWxsZWQgV2lu
ZG93cyB3YXMgYmFzZWQgb24KRE9TLCB3aGljaCBjb3VsZCBiZSBvcGVuZCB1cCBhbHdheXMgYnkg
cHJlc3NpbmcgV2lua2V5K2MuIFRoZW4gYSBET1MgYm94IHdhcyBwYWludGVkIGJ5IHBpeGVscy4K
CkhUSApndWVudGVyCgouQW0gMTMuMDcuMjMgdW0gMjE6MDggc2NocmllYiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+IEJhY2sgaW4gdGhlIGVuZCBvZiBET1MgZGF5cywgSSB1
c2VkIGEgbWVudWluZyBwcm9ncmFtLsKgIE9uZSBjb3VsZCBhcnJvdyB0byBhbiBpdGVtIG9yIHR5
cGUgaXRzCj4gaW5pdGlhbCBjaGFyYWN0ZXIgYW5kIGl0IHdvdWxkIGNhbGwgYSBET1MgZXhlY3V0
YWJsZS7CoCBUaGVyZSB3YXMgZXZlbiBhIHByb2dyYW0gc3VjaCBhcyB0aGlzCj4gaW5jbHVkZWQg
d2l0aCB0aGUgbGFzdCBjb3VwbGUgdmVyc2lvbnMgb2YgRE9TLsKgIFNvIHdvdWxkIEkgc2F5IEkg
d2FzIHdvcmtpbmcgaW4gY29uc29sZSBtb2RlP8KgIE9yCj4gbWF5YmUgY29uc29sZSBtb2RlIGlz
IHdoZW4geW91IGFyZSBjb21tYW5kaW5nIHRoZSBvcGVyYXRpbmcgc3lzdGVtIGRpcmVjdGx5P8Kg
IFRoZW4sIGhvdyBkb2VzIGNvbnNvbGUKPiBtb2RlIGRpZmZlciBmcm9tIHRlcm1pbmFsIG1vZGU/
wqAgT3IgaXMgdGhhdCBhIHdob2xlIG90aGVyIHRoaW5nPwo+Cj4gSG93YXJkLS0KLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=


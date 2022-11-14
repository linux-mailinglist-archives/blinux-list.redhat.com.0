Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 180E1628C5C
	for <lists+blinux-list@lfdr.de>; Mon, 14 Nov 2022 23:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1668466481;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HdfKohfQdw3VVu9CDvUFPM9gtKmhvXEHNqcjtqHjFOs=;
	b=Uinsfwd5qtdU0nQf5Ou3uSrfvlcP/ca6wAYVqk5N9TFwQvncoJK3XHADK9rKLuaAGqB+hl
	e25X7Ki1Sq1TDrL2DE2jqAvltgi82kD/anuw0s/u+R02+aEESV6T2hy0Xk1Uw7Dh81TKbU
	exLJNxrv5KqCl5ExjWRGOWksFR6SvWE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-O4GnLvNvP0Kar13D38sG8w-1; Mon, 14 Nov 2022 17:54:38 -0500
X-MC-Unique: O4GnLvNvP0Kar13D38sG8w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6ED24185A78F;
	Mon, 14 Nov 2022 22:54:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6ACCC2166B2E;
	Mon, 14 Nov 2022 22:54:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D2D4919465B3;
	Mon, 14 Nov 2022 22:54:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 14 Nov 2022 23:53:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: I couldn't start amuled
To: blinux-list@redhat.com, slint@freelists.org
References: <mailman.7133.1668332283.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.7133.1668332283.3004.blinux-list@redhat.com>
Message-ID: <mailman.7404.1668466466.3004.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ29zY2VsbCwKCkxlIDEzLzExLzIwMjIgw6AgMDk6MzcsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBBc3NlcnRpb24gZmFpbGVkOiAuL3NyYy9jb21t
b24vc29ja2V0aW9oYW5kbGVyLmNwcDpJbnN0YWxsX0NhbGxiYWNrOjUwOgo+IEFzc2VydGlvbiAn
InNvY2tldC0+bV9mZCAhPSAtMSInIGZhaWxlZC4gc2hvdWxkbid0IGJlIGNhbGxlZCBvbiBpbnZh
bGlkIHNvY2tldAo+IEJhY2t0cmFjZSBmb2xsb3dzOgo+IFszXSB3eE9uQXNzZXJ0KGNoYXIgY29u
c3QqLCBpbnQsIGNoYXIgY29uc3QqLGNoYXIgY29uc3QqLCBjaGFyIGNvbnN0KikgaW4KPiAvdXNy
L2xpYi9saWJ3eF9iYXNldS0zLjIuc28uMFsweDdmYTRiNTZhN2UyM10gWzRdID8/IGluCj4gL3Vz
ci9saWIvbGlid3hfYmFzZXVfbmV0LTMuMi5zby4wWzB4N2ZhNGI1OWIwZDdiXQo+IFs1XSA/PyBp
biAvdXNyL2xpYi9saWJ3eF9iYXNldV9uZXQtMy4yLnNvLjBbMHg3ZmE0YjU5YjBmODNdCj4gWzZd
IHd4U29ja2V0QmFzZTo6U2V0RmxhZ3MoaW50KSBpbgo+IC91c3IvbGliL2xpYnd4X2Jhc2V1X25l
dC0zLjIuc28uMFsweDdmYTRiNTk5YzgxMF0KPiBbN10gd3hTb2NrZXRCYXNlOjpQZWVrKHZvaWQq
LCB1bnNpZ25lZCBpbnQpIGluCj4gL3Vzci9saWIvbGlid3hfYmFzZXVfbmV0LTMuMi5zby4wWzB4
N2ZhNGI1OTlkNTkxXQo+IFs4XSB3eFByb3RvY29sOjpSZWFkTGluZSh3eFNvY2tldEJhc2UqLCB3
eFN0cmluZyYpIGluCj4gL3Vzci9saWIvbGlid3hfYmFzZXVfbmV0LTMuMi5zby4wWzB4N2ZhNGI1
OTkyMDFmXQo+IFs5XSB3eEhUVFA6OlBhcnNlSGVhZGVycygpIGluIC91c3IvbGliL2xpYnd4X2Jh
c2V1X25ldC0zLjIuc28uMFsweDdmYTRiNTk4YjA5OF0KPiBbMTBdIHd4SFRUUDo6QnVpbGRSZXF1
ZXN0KHd4U3RyaW5nIGNvbnN0Jiwgd3hTdHJpbmcgY29uc3QmKSBpbgo+IC91c3IvbGliL2xpYnd4
X2Jhc2V1X25ldC0zLjIuc28uMFsweDdmYTRiNTk4ZjkzMl0KPiBbMTFdIHd4SFRUUDo6R2V0SW5w
dXRTdHJlYW0od3hTdHJpbmcgY29uc3QmKSBpbgo+IC91c3IvbGliL2xpYnd4X2Jhc2V1X25ldC0z
LjIuc28uMFsweDdmYTRiNTk5MDJkNV0KPiBbMTJdIENIVFRQRG93bmxvYWRUaHJlYWQ6OkdldElu
cHV0U3RyZWFtKHd4SFRUUComLCB3eFN0cmluZyBjb25zdCYsIGJvb2wpIGluCj4gSFRUUERvd25s
b2FkLmNwcDozODcKPiBbMTNdIENIVFRQRG93bmxvYWRUaHJlYWQ6OkVudHJ5KCkgaW4gSFRUUERv
d25sb2FkLmNwcDoyMjQKPiBbMTRdIHd4VGhyZWFkOjpDYWxsRW50cnkoKSBpbiAvdXNyL2xpYi9s
aWJ3eF9iYXNldS0zLjIuc28uMFsweDdmYTRiNTdkMzVkMl0KPiBbMTVdID8/IGluIC91c3IvbGli
L2xpYnd4X2Jhc2V1LTMuMi5zby4wWzB4N2ZhNGI1N2QzYmRjXQo+IFsxNl0gPz8gaW4gL2xpYjY0
L2xpYnB0aHJlYWQuc28uMFsweDdmYTRiNjA1OGU0NV0KPiBbMTddIGNsb25lIGluIC9saWI2NC9s
aWJjLnNvLjZbMHg3ZmE0YjUxMmM0YWZdCj4gdGVybWlhdGVkCj4gCj4gSG93IHRvIGZpeD8gVGhh
bmsgeW91IQoKVGhpcyBpcyBwcm9iYWJseSBkdWUgdG8gYSBtaXNtYXRjaCBiZXR3ZWVuIHRoZSB2
ZXJzaW9uIG9mIHd4R1RLMyByZXF1aXJlZCBieSB0aGUKYU11bGUgcGFja2FnZSB5b3UgaW5zdGFs
bGVkIGZyb20gdGhlIHNhbGl4LTE1LjAgcmVwb3NpdG9yeSBhbmQgdGhlIG9uZSBzaGlwcGVkCmlu
IFNsaW50LgoKQXMgSSBoYXZlIG5vdyBpbmNsdWRlZCBhTXVsZSBpbiBTbGludCwgZ2V0dGluZyB0
aGUgbGFzdCBiYXRjaCBvZiB1cGRhdGVzIGFzCmluZGljYXRlZCBpbiB0aGUgU2xpbnQgbWFpbGlu
ZyBsaXN0IHNob3VsZCBzb2x2ZSB0aGUgaXNzdWUuCgpQbGVhc2UgbGV0IHVzIGtub3cgaG93IHRo
YXQgZ29lcy4KCkNoZWVycywKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyCmRpaWRlcmF0c2xpbnRk
b3RmcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=


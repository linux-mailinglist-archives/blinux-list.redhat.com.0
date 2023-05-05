Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB166F80BA
	for <lists+blinux-list@lfdr.de>; Fri,  5 May 2023 12:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683282267;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i7V6FHCUXCfqnl4wGGVjTM/DtRVr94SXtlow5r936jI=;
	b=Zs6e82Sz9QoS2ZlXpD9w7FIX3QCU1RkitSYey+GnJRPGIeXGl02mQAbKtCDDcBR7A//c4Z
	Na5DpGAAva012qDYci7+FiOcsVZEJ5SYbpGlZXWFVWyxnjotTuMqSazTH7wcsL59aOTPbe
	32hxgZ3LS+p1k5W7Ahko2/mvePosUaQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-594-QYg9l8bYOGuXEaujSBVEFg-1; Fri, 05 May 2023 06:24:23 -0400
X-MC-Unique: QYg9l8bYOGuXEaujSBVEFg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0480E2801A47;
	Fri,  5 May 2023 10:24:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DA2621121339;
	Fri,  5 May 2023 10:24:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 87F311946A4C;
	Fri,  5 May 2023 10:24:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 5 May 2023 12:24:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
To: blinux-list@redhat.com
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1746.1683212513.290943.blinux-list@redhat.com>
 <mailman.1827.1683230336.290941.blinux-list@redhat.com>
In-Reply-To: <mailman.1827.1683230336.290941.blinux-list@redhat.com>
Message-ID: <mailman.1949.1683282251.290943.blinux-list@redhat.com>
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
Content-Language: de-DE, en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgTWF0dGhldywKCmkgZG8gbm90IHNoaXAgdGhlIGF1dG8gc3RhcnQgc2NyaXB0cyBieSBw
aXAgYXMgdGhpcyBpcyB2ZXJ5IGFnbm9zdGljIHRvIAp0aGUgdXNlZCBMaW51eCBkaXN0cmlidXRp
b24uIEJ1dCB5b3UgY2FuIGZpbmQgc29tZSBmb3IgcnVuaXQgYW5kIHN5c3RlbWQgCm9uIGdpdDoK
aHR0cHM6Ly9naXRodWIuY29tL2NocnlzODcvZmVucmlyL3RyZWUvbWFzdGVyL2F1dG9zdGFydAoK
bWF5YmUgbW9zdCBlYXN5IGZvciB5b3Ugd291bGQgYmUgdG8gcmVxdWVzdCBmZWRvcmEgbWFpbnRh
aW5lcnMgdG8gCnBhY2thZ2UgZmVucmlyIGZvciB5b3UuCgo+IGJ0dyBzaG91bGQgSSBoYXZlIHJh
biB0aGUgcGlwIGluc3RhbGwgY29tbWFuZCBhcyByb290Pwp5ZWEsIHRvIGluc3RhbGwgZmVucmly
IGdsb2JhbCBvbiB5b3VyIG1hY2hpbmUgcm9vdCBwZXJtaXNzaW9ucyBhcmUgcmVxdWlyZWQuCkZl
bnJpciBydW5zIGFsc28ganVzdCBmaW5lIHdpdGhvdXQgaW5zdGFsbGF0aW9uIGp1c3QgZnJvbSBn
aXQgdHJlZS4gdGhpcyAKaXMgbm90IGp1c3QgaGFuZHkgdG8gdGVzdCBuZXdlciB2ZXJzaW9ucyBv
ZiBmZW5yaXIgYnUgYWxzbyB5b3UgY2FuIApiYXNpY2FseSBwdXQgdGhlIGZvbGRlciBzb21ld2hl
cmUgaW4gb3B0IGFuZCBjaGFuZ2UgdGhlIHN0YXJ0dXAgc2NyaXB0IAp0byB0aGUgbmV3IGxvY2F0
aW9uCgoKY2hlZXJzIGNocnlzCgpBbSAwNC4wNS4yMyB1bSAyMTo1OCBzY2hyaWViIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gSGkgQ3JpZXMswqAgSSBnb3QgaXQgaW5zdGFs
bGVkIGJ5IGluc3RhbGxpbmcgcHl0aG9uLWV2ZGV2LsKgIE5vdyBJIGp1c3QgCj4gbmVlZCB0byBm
aWd1cmUgb3V0IGhvdyB0byBlbmFibGUgaXQgdG8gc3RhcnQgYXQgYm9vdC4gVGhhbmtzLCBidHcg
Cj4gc2hvdWxkIEkgaGF2ZSByYW4gdGhlIHBpcCBpbnN0YWxsIGNvbW1hbmQgYXMgcm9vdD/CoCBJ
IGdvdCBhIHdvcm5pbmcgCj4gYWJvdXQgcnVubmluZyBhcyByb290IGNvdWxkIGNhdXNlIHBlcm1p
dGlvbiBwcm9ibGVtcy4gSnVzdCB3b25kZXJpbmcuCj4KPgo+IE1hdHRoZXcKPgo+Cj4KPiBPbiA1
LzQvMjMgMTE6MDEgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+IEhvd2R5IE1hdHRoZXcsCj4+Cj4+IGNhbiB5b3UgcG9zdCB0aGUgZXhhY3QgZXJyb3IgbWVz
c2FnZT8KPj4KPj4gd2hhdCBoYXBwZW5zIGlmIHlvdSBkbzoKPj4gc3VkbyBweXRob24gLWMgJ2lt
cG9ydCBldmRldicKPj4KPj4gZG8geW91IGdldCBhbiBlcnJvciBtZXNzYWdlPwo+Pgo+PiBjaGVl
cnMgY2hyeXMKPj4KPj4KPj4gbSAwMy4wNS4yMyB1bSAyMDo0MiBzY2hyaWViIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4KPj4+IEkgYW0gdXNp
bmcgZmVkb3JhIDM4IHdvcmtzdGF0aW9uIGlmIHRoaXMgbWF0dGVycyBhbmQgd2hlbiB0cnlpbmcg
dG8gCj4+PiBpbnN0YWxsIGZlbnJpciBJIGdldCBhIGVycm9yIGZyb20gZXZkZXYgb3Igc29tZXRp
bmcgYWJvdXQgYSBubyBzdWNoIAo+Pj4gZmlsZSBvciBkaXJlY3RvcnkuwqAgSSBmaXJzdCBpbnN0
YWxsZWQgcGlwIHRoZW4gcmFuIHBpcCBpbnN0YWxsIGFuZCAKPj4+IGdvdCB0aGF0IGVycm9yLsKg
IEFueXdheSB1c2luZyBmZW5yaXIgaW4gZmVkb3JhIGFuZCBob3cgZGlkIHlvdSBnZXQgCj4+PiBp
dCB3b3JraW5nP8KgIElzIHRoZXJlIGFub3RoZXIgcGFja2FnZSBJIG5lZWQgdG8gaW5zdGFsbCBz
b21ld2FyZT/CoCAKPj4+IFRoYW5rcyBpZiBhbnlvbmUgaGFzIGFueSBpZGVhcyBvbiB3aGF0IG1p
Z2h0IGJlIGdvaW5nIG9uIEkgd291bGQgCj4+PiBsaWtlIHNvbWUgcG9pbnRlcnMgb24gdGhpcyBv
bmUuCj4+Pgo+Pj4KPj4+IE1hdHRoZXcKPj4+Cj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK


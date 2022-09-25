Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D0A5E95FE
	for <lists+blinux-list@lfdr.de>; Sun, 25 Sep 2022 22:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664138684;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wKTHWaNMaBUtLoaX6tMRl6yzVJmNdT3rIflv97wC7Lk=;
	b=GqrZRbivwIdte6VGSyHH/WK9xeZeoMBCpEozXBbL57w5lgwXSUHqq0o2LeTQntz2/gk5AD
	3sinU6/6zInHIhscjq/yLEAqqSjfZ/3d9O+f9AYWarXHlEpR3WJWs+Om7toLgQEOWMnVaj
	T1OOjZixNks94MWwDcfWVN8Zvqn5faE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-550-_LP7d8mrMn2QD6yv77ARGA-1; Sun, 25 Sep 2022 16:44:40 -0400
X-MC-Unique: _LP7d8mrMn2QD6yv77ARGA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8BDE38041C7;
	Sun, 25 Sep 2022 20:44:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B1C8940C6EC4;
	Sun, 25 Sep 2022 20:44:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DAEC319465A3;
	Sun, 25 Sep 2022 20:44:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 25 Sep 2022 22:44:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: slack in Ubintu?
To: blinux-list@redhat.com,
 Blind and Low-Vision Unix User's Group <discuss@blvuug.org>
References: <Pine.LNX.4.64.2209251225030.2246441@server2.shellworld.net>
 <87fsgf7472.fsf@aol.com> <CN5OB5WYJNS2.34IEXFK1NRMYF@archlinux-x220>
 <mailman.2648.1664137007.6079.blinux-list@redhat.com>
In-Reply-To: <mailman.2648.1664137007.6079.blinux-list@redhat.com>
Message-ID: <mailman.2361.1664138674.6074.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBDaHJpcyBzYWlkLi4uIEFuZCBzb3JyeSBpZiB0aGF0IGRvZXMgbm90IGFkZHJlc3MgdGhl
IHF1ZXN0aW9uLCBidXQgbGV0J3MKbm90IGZvcmdldCB0aGUgTGludXggY29uc29sZSBha2EgdHR5
LgoKTm8gZ3JhcGhpY2FsIGVsZW1lbnQsIG9ubHkgYWN0dWFsIHRleHQsIHNvIG5vIHN1Y2ggaXNz
dWUuCgpEaWRpZXIKCkxlIDI1LzA5LzIwMjIgw6AgMjA6MTAsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gRG8geW91IGhhcHBlbiB0byBrbm93IG9mIGFu
eSByZXNvdXJjZXMgb24gc2NyZWVuLXJlYWRlciBmcmllbmRsaW5lc3MgZm9yCj4+IFRVSXMgaW4g
Z2VuZXJhbD8gSXMgdGhlcmUgYW55IHBhcnRpY3VsYXIgd2F5IHNjcmVlbi1yZWFkZXJzIGtub3cg
aG93IHRvCj4+IGRpc3Rpbmd1aXNoIGZyb20gYWN0dWFsIHRleHQgYW5kICJncmFwaGljYWwiIGVs
ZW1lbnRzPyBPciBhIHdheSB0aGF0IFRVSQo+PiBwcm9ncmFtIGRldmVsb3BlcnMgY2FuIGFjY29t
b2RhdGUgdGhhdD8KPiAKPiBIZXJlIGNvbWVzIGEgd2FsbCBvZiBwb250aWZpY2F0aW9uLi4uCj4g
Cj4gTm90IHJlYWxseS4gIEFzIGEgcnVsZSwgSSBhdm9pZCBUVUlzLiAgSW50ZXJmYWNlcyB0aGF0
IGV4cGxvaXQgdGhlCj4gY3Vyc29yLWFkZHJlc3NhYmxlIHRlcm1pbmFsIHNlZW0gbGlrZSB0aGUg
d29yc3Qgb2YgYm90aCB0aGUgdGV4dCBhbmQgR1VJCj4gd29ybGQgdG8gbWUuICBFc3NlbnRpYWxs
eSwgYSBUVUkgaXMganVzdCBhIEdVSSB3aXRoIGEgVlQxMDAgYXMgdGhlCj4gY2FudmFzIGFuZCB0
eXBpY2FsbHkgbm8gdW5kZXJseWluZyBvYmplY3QgdG9vbGtpdFsxXS4gIEJ1dCBkb24ndCBsZXQK
PiB0aGF0IGRpc2NvdXJhZ2UgeW91Lgo+IAo+IEkgdXNlIHRocmVlIHR5cGVzIG9mIGludGVyZmFj
ZXMuCj4gCj4gMS4gU2VsZi12b2ljaW5nLiAgSSBtYWtlIGhlYXZ5IHVzZSBvZiBFbWFjcyB3aXRo
IHRoZSBFbWFjc3BlYWsKPiBleHRlbnNpb24uICBFbWFjcyBjYW4gYmUgYSBUVUkgb3IgYSBHVUkg
cHJvZ3JhbSwgYW5kIHdpdGggZXh0ZW5zaW9ucwo+IGxpa2UgRW1hY3NwZWFrIGFuZCBzcGVlY2hk
LmVsLCBpdCBjYW4gYmUgYSBzZWxmLXZvaWNpbmcgcHJvZ3JhbSBhcwo+IHdlbGwuICBFZGl0aW5n
IHRleHQgaXMgYSBncmVhdCBVSSBtZXRhcGhvci4KPiAKPiAyLiBUZWxldHlwZS1zdHlsZSBwcm9n
cmFtcywgZWl0aGVyIHdpdGggdGhlaXIgb3duIGludGVyYWN0aXZlIGlucHV0Cj4gbG9vcHMsIG9y
IGNhbGxlZCBkaXJlY3RseSBmcm9tIHRoZSBzaGVsbC4gIEVkYnJvd3NlIGlzIGFuIGV4YW1wbGUg
b2YgdGhlCj4gZm9ybWVyIGNhdGVnb3J5LiAgVGhlIHJlZGRpdCBjbGllbnQgSSB1c2UsIHJlZGRp
bywgaXMgYW4gZXhhbXBsZSBvZiB0aGUKPiBsYXR0ZXIuICBUaGVyZSdzIGFuIGV4Y2VsbGVudCBv
cGluaW9uIHBpZWNlIGFib3V0IHRlbGV0eXBlLXN0eWxlIGludGVyYWN0aW9uCj4gd3JpdHRlbiBi
eSBLYXJsIERhaGxrZTogPGh0dHBzOi8vd3d3LmVrbGhhZC5uZXQvcGhpbG9zb3BoeS5odG1sPi4K
PiAKPiAzLiBHVUlzLCB3aGVuIEkgbXVzdC4KPiAKPiBbMV0gQXMgYSB0aG91Z2h0IGV4cGVyaW1l
bnQsIHdlIGNvdWxkIGltYWdpbmUgYW4gb2JqZWN0IHRvb2xraXQgZm9yIHRoZQo+IHRlcm1pbmFs
OiBhIEdUSyBvciBRVCBmb3IgdGhlIFZUMTAwLCBpZiB5b3Ugd2lsbC4gIEl0J3MgYmVlbiBkb25l
Cj4gYmVmb3JlLCB0aG91Z2ggSSBkb24ndCByZW1lbWJlciBhbnkgY2l0YXRpb25zIG9mZiB0aGUg
dG9wIG9mIG15IGhlYWQuCj4gSW4gdGhlb3J5LCBzdWNoIGEgdG9vbGtpdCBjb3VsZCBwcm92aWRl
IGhvb2tzIGZvciBzY3JlZW5yZWFkZXJzLCB0byBnaXZlCj4gYSBtb3JlIHNlYW1sZXNzIC8gbGVz
cyBmcnVzdHJhdGluZyBleHBlcmllbmNlLiAgVGhhdCBoYXNuJ3QgYmVlbiBkb25lLAo+IGFuZCBJ
IGRvbid0IGtub3cgaWYgaXQgd291bGQgYmUgd29ydGggZG9pbmcuCj4gCj4gLS0gQ2hyaXMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK


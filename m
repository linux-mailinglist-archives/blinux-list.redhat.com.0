Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DAB4FA599
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 09:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649489918;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1TkL3gxgYAwJ9hJPteXay91LnlVM7L1BNiAWhW7zKgw=;
	b=bTBlRqPmkfvm2QabugnMTyrog1ES9/6JwrPbf+Xs1QIQgq1XUAr86TDFhfEO8Sxm0Moage
	2OyskSD7P2VFrinEH5ldJjn7UpzV66O8rdOpMXlQH1WJk/y/eS2Q5D7FlACmGWCj5J9WJF
	UEEImFmZw2M8AKQmE9stqiC+wV3suUg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-41-zAPqFN1mMuGdyf-InVkAVQ-1; Sat, 09 Apr 2022 03:38:37 -0400
X-MC-Unique: zAPqFN1mMuGdyf-InVkAVQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D85103804528;
	Sat,  9 Apr 2022 07:38:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F1AD3C27E83;
	Sat,  9 Apr 2022 07:38:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 60806194034D;
	Sat,  9 Apr 2022 07:38:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm questions/NNN query
Date: Sat, 9 Apr 2022 09:38:18 +0200
References: <mailman.7383.1649469380.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.7383.1649469380.111207.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.7278.1649489907.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpJIHdpbGwgcmVwbGFjZSB0aGUgc2hlbGxiYW5nIG9mIGRyYWdvbkZNIGFuZCB0aGUg
c2V0dXAucHkgd2l0aAovYmluL2VudiBweXRob24zClRoYXQgc2hvdWxkIGZpeCB0aGUgaXNzdWUg
d2l0aG91dCBuZWVkaW5nIHRvIHVzZSBhbiBpbnRlcnByZXRlciBleHBsaWNpdC4gV2hhdCBkbyB5
b3UgdGhpbms/CgpDaGVlcnMgY2hyeXMKCj4gQW0gMDkuMDQuMjAyMiB1bSAwMzo1NiBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+Ogo+IAo+IO+7v1RPb2sgYSBsb29rIGF0IHRoZSBkb2N1bWVudGF0aW9uLCBpdCdzIGdvb2Qg
aG93ZXZlciBvbmUgdGhpbmcgSSBub3RlZCBpcwo+IHRoYXQgc3VkbyAuL3NldHVwLnB5IGluc3Rh
bGwgdGhyb3dzIGFuIGVycm9yIG9uIHNvbWUgZGlzdHJvcyBvZiBubyBzdWNoCj4gZmlsZSBvciBk
aXJlY3RvcnksIHNvIEkgaGFkIHRvIGRvIHN1ZG8gcHl0aG9uMyAuL3NldHVwLnB5IGluc3RhbGwg
dG8KPiBpbnN0YWxsIGl0LiBJdCB3b3JrcyBmaW5lLCBqdXN0IGEgaGVhZHMgdXAKPiAKPj4gT24g
U2F0LCBBcHIgMDksIDIwMjIgYXQgMDI6MjY6MTVBTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSG93ZHksCj4+IAo+PiBPayB0aGVuIGkga2VlcCB0
aGF0IGFsdCArIHUuCj4+IAo+Pj4gVGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwgYnV0IGRvZXMg
dGhlIFBheXRyaW9uIGxpbmsgeW91IHNlbnQgaW4gYW5vdGhlciBtZXNzYWdlIGhhdmUgdGhlIGlu
Zm8gb24gY2hhbmdpbmcgdGhlIHNob3J0Y3V0cyBhcyB3ZWxsPwo+PiAKPj4gCj4+IFdlbGwgaSBj
aGFuZ2VkIHRoZSBzaG9ydGN1dHMgaW4gbWFzdGVyLiBTbyB0aGVyZSBpcyBubyBuZWVkIHRvIGNo
YW5nZSB0aGVtIGJ5IG90aGVycyBhbnltb3JlLiAKPj4gT3Igd2hhdCBpbmZvIHlvdSBtZWFuIGV4
YWN0bHk/Cj4+IAo+PiBUaGVyZSBpcyBub3cgYXQgbGVhc3QgYSBiYXNpYyBkb2N1bWVudGF0aW9u
IDopLgo+PiAKPj4gQ2hlZXJzIGNocnlzCj4+IAo+Pj4+IEFtIDA5LjA0LjIwMjIgdW0gMDI6MTUg
c2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPj4+IAo+Pj4g77u/T2theSBpZiBpdCdzIGp1c3QgYWx0K3UgdGhlbiB5ZXMg
a2VlcCBpdCB0aGF0IHdheS4gVGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwgYnV0IGRvZXMgdGhl
IFBheXRyaW9uIGxpbmsgeW91IHNlbnQgaW4gYW5vdGhlciBtZXNzYWdlIGhhdmUgdGhlIGluZm8g
b24gY2hhbmdpbmcgdGhlIHNob3J0Y3V0cyBhcyB3ZWxsPwo+Pj4gCj4+Pj4gT24gRnJpLCBBcHIg
MDgsIDIwMjIgYXQgMTE6Mjg6MzBQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+PiBIb3dkeSwKPj4+PiAKPj4+PiBpIGluc3RhbGxlZCBNYXRlIHRl
cm1pbmFsIGZvciB0ZXN0aW5nCj4+Pj4gCj4+Pj4gLy8gQ3RybCtEIGZvciBkZXRhaWxzIGluc3Rl
ZWFkIG9mIEYxMAo+Pj4+IG9rIHRoaXMgaXMgY2hhbmdlZC4KPj4+PiAKPj4+PiBhYm91dCBeW3Ug
aSB3YXMgd3JvbmcuIGl0cyBqdXN0IGFsdCArIHUKPj4+PiBzbyBhIHNpbmdsZSBeIGlzIEN0cmwK
Pj4+PiB0aGUgc2VxdWVuY2UgXlsgaXMgYWx0IGlmIGl0IGlzIGZvbGxvd2VkIGJ5IGFuIGxldHRl
ci4gaWYgbm90LCBpdHMgZXNjYXBlCj4+Pj4gY3RybCArIGFsdCArIHggd291bGQgYmUgXlteQwo+
Pj4+IAo+Pj4+IGJhY2sgdG8gQWx0ICsgdSwgdGhpcyB3b3JrZWQgZm9yIG1lLCBzaG91bGQgaSBj
aGFuZ2UgdGhlIHNob3J0Y3V0IGluIGFueQo+Pj4+IHdheT8KPj4+PiAKPj4+PiAvLyBJJ20gdHJ5
aW5nIHRvIHJlcGxhY2UgdW56aXAgYW5kIHRhciB3aXRoIGF0b29sCj4+Pj4gaW4gc2VjdGlvbiBb
bWltZV0geW91IHNlZSBob3cgdG8gb3BlbiBhbiBmaWxlLgo+Pj4+IGluIHNlY3Rpb24gW2NvbXBy
ZXNzXSBhbmQgW2RlY29tcHJlc3NdIHlvdSBjYW4gY29uZmlndXJlIHRoZSBkZS0vY29tcHJlc3Np
bmcKPj4+PiBwcm9jZXNzLgo+Pj4+IGkgY2hhbmdlZCB0aGlzIGZvciB5b3UKPj4+PiAKPj4+PiBj
b21wcmVzcyAodGhlIHdvcmQgY29tcHJlc3MgYmV2b3JlIHRoZSBlcXVhbCBpcyBqdXN0IHRoZSBs
YWJsZSBzaG93biBpbgo+Pj4+IGNvbnRleHQgbWVudSk6Cj4+Pj4gIyB7MH0gPSBTb3VyY2U6IGxp
c3Qgb2YgZmlsZXMgc2VwYXJhdGVkIGJ5IHNwYWNlIHdpdGggYWJzb2x1dCBmaWxlcGF0aAo+Pj4+
ICMgezF9ID0gRGVzdGluYXRpb246ICBhcmNoaXZlIG5hbWUKPj4+PiBjb21wcmVzcz1hcGFjayAt
cSB7MX0gezB9Cj4+Pj4gCj4+Pj4gCj4+Pj4gZGVjb21wcmVzcyAoZm9yIHppcGZpbGVzLCB5b3Ug
Y2FuIGp1c3QgY29weSB0aGF0IGZvciBhbnkgb3RoZXIgZm9ybWF0Cj4+Pj4gc3VwcG9ydGVkIGJ5
IGF0b29sIGFuZCBjaGFuZ2UgdGhlIGFwcGxpY2F0aW9uL3ppcCB0byB3aGF0ZXZlciBtaW1ldHlw
ZSB5b3UKPj4+PiB3YW50IHRvIHVuemlwKToKPj4+PiAjIHswfSA9IFNvdXJjZTogZmlsZSB0byBk
ZWNvbXByZXNzCj4+Pj4gIyB7MX0gPSBEZXN0aW5hdGlvbjogZm9sZGVyIHdpdGggYXJjaGl2ZSBj
b250ZW50Cj4+Pj4gYXBwbGljYXRpb24vemlwPWF0b29sIC1mIC1xIC0tZXh0cmFjdC10bz17MX0g
ezB9Cj4+Pj4gCj4+Pj4gaSBqdXN0IHB1c2hlZC4KPj4+PiAKPj4+PiBjaGVlcnMgY2hyeXMKPj4+
PiAKPj4+PiAKPj4+Pj4gQW0gMDguMDQuMjIgdW0gMjI6MTEgc2NocmllYiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+PiBTdXJlIHRoaW5nLiBIZXJlJydzIHdoYXQgSSB3
aGlwcGVkIHVwcCByZWFsIHF1aWNrCj4+Pj4+IAo+Pj4+PiBDdHJsK0QgZm9yIGRldGFpbHMgaW5z
dGVlYWQgb2YgRjEwCj4+Pj4+IAo+Pj4+PiBDdHJsK2FsdCt4IGZvciBleHRyYWN0IGluc3RlYWQg
b2YgdHJsK2FsdCt1ICh3aGljaCBkb2VzbnQgc2VlbSB0byB3b3JrCj4+Pj4+IG9uIE1hdGU/KQo+
Pj4+PiAKPj4+Pj4gSSdtIHRyeWluZyB0byByZXBsYWNlIHVuemlwIGFuZCB0YXIgd2l0aCBhdG9v
bCwgaG93IE5OTiBoYW5kbGVzIGl0IHNpbmNlCj4+Pj4+IGl0J3MgYSBsb3QgbmljZXIgdG8gaGF2
ZSBvbmUgdG9vbCB0aGF0IGhhbmRsZXMgYSB0b24gb2YgZm9ybWF0cyB3aXRob3V0Cj4+Pj4+IGhh
dmluZyB0byBodW50IGRvd24gMTAgZGlmZmVycmVudCBwcm9ncmFtcwo+Pj4+PiAKPj4+Pj4gQXNp
ZGUgZnJvbSB0aGF0LCBub3QgbWFkZSBhbnkgb3RoZXIgY2hhbmdlcyB0byB0aGUgLmNvbmYgZmls
ZSB0aG91Z2guCj4+Pj4+IEl0J3MgYSBuZWF0IGxpdHRsZSBwcm9ncmFtLCB0aG91Z2gganVzdCBp
biBjYXNlIEkgbWlzc2VkIGFueSwgZ28gdGhyb3VnaAo+Pj4+PiBhbmQgdXNlIERyYWdvbkZNIHdp
dGggYSB0ZXJtaW5hbCBlbXVsYXRvciBhbmQgc2VlIHdoYXQgeW91IGNhbiBjb21lIHVwCj4+Pj4+
IHdpdGggZm9yIHNob3J0Y3V0cz8gSSdtIG9uIGEgbGFwdG9wIGN1cnJlbnRseSBzbyB0aGF0IGtp
bmQgb2YgaGluZGVycwo+Pj4+PiB3aGF0IEkgY2FuIGRvIHNob3J0Y3V0cyB3aXNlIGhvd2V2ZXIK
Pj4+Pj4gCj4+Pj4+IE9uIEZyaSwgQXByIDA4LCAyMDIyIGF0IDEwOjAzOjI3UE0gKzAyMDAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiBIb3dkeSwKPj4+
Pj4+IAo+Pj4+Pj4gV2VsbCwgRjEyMyB3YXMgbW9zdGx5IFRUWSBvbmx5LiBTbyB0aGUgYmluZGlu
Z3MgYXJlIHNldCB3aXRoIHRoYXQgaW4gbWluZCA6KS4gVGhlIHByb2plY3Qgd2FudGVkIHRvIG1v
bWljIEdVSSBzaG9ydGN1dHMgZm9yIG1vc3QgcGFydHMuCj4+Pj4+PiBUaGUgY29sbGlkaW5nIHNo
b3J0Y3V0cyBjYW4gYmUgY2hhbmdlZCB2ZXJ5IGVhc3kgaW4gc2V0dGluZ3MgZmlsZS4KPj4+Pj4+
IAo+Pj4+Pj4gSWYgeW91IGhhbmQgbWUgYSBsaXN0IHdpdGggc2hvcnRjdXRzIHlvdSB3YW50IHRv
IGhhdmUgY2hhbmdlZCwgaSBjaGFuZ2UgdGhlbSBmb3IgeW91IHJpZ2h0IGluIG1hc3Rlci4KPj4+
Pj4+IAo+Pj4+Pj4gQXMgRjEyMyBpcyBubyBtb3JlLCBUVFkgY29tcGF0LiBkb2VzIG5vdCBtYXR0
ZXIgdGhhdCBtdWNoIGFueW1vcmUgdG8gbWUgYW5kIHdlIGNhbiBpbXByb3ZlIGl0IGluIHRlcm1p
bmFsIGVtdWxhdG9ycyAobW9zdCBvZiB0aGVtIGhhdmUgbW9yZSBjYXBhYmlsaXRpZXMgdGhhbiBU
VFkgaW4gYW55IHdheSwgZm9yIGV4YW1wbGUga29uc29sZSAoIHRoZSBLREUgdGVybWluYWwgZW11
bGF0b3IgaGFzIHNwZWNpYWwgZXNjYXBlIHNlcXVlbmNlcyBmb3Igc2hpZnQgYXJyb3cpCj4+Pj4+
PiAKPj4+Pj4+IENoZWVycyBjaHJ5cwo+Pj4+Pj4gCj4+Pj4+Pj4gQW0gMDguMDQuMjAyMiB1bSAy
MTo1MyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+Ogo+Pj4+Pj4+IAo+Pj4+Pj4+IO+7v1VuZm9ydHVuYXRlbHksIERyYWdv
bkZNIGRvZXNuJ3Qgd29yayB3ZWxsIG91dCBvZiB0aGUgYm94IHdpdGggYSB0ZXJtaW5hbCBlbXVs
YXRvciwgbW9zdGx5IGRvd24gdG8gY29uZmxpY3RzIHdpdGgga2V5cyBsaWtlIEYxMC4gWWVzIEkg
Y2FuIHJlZGVmaW5lIHRoZW0sIGJ1dCB0aGF0J3Mga2luZCBvZiBzb21ldGhpbmcgSW0gc2x3bHkg
c2xvd2x5IHBva2luZyBhdC4gSSdtIHVuYWJsZSB0byBnZXQgTWF0ZS10ZXJtaW5hbCB0byByZWNv
Z25pemUgYSBjdHJsK2FsdCBwYXRlcm4gaG91Z2ggd2hlcmVhcyBhIFRUWSB3b3JrcyBmaW5lIHNv
LCB1bnN1cmUgaWYgeW91IG5lZWQgdG8gdGVzdCBEcmFnb25mbSBvbiB0ZXJtaW5hbCBlbXVsYXRv
cnMgd2l0aCBhIGRlc2t0b3A/Cj4+Pj4+Pj4gCj4+Pj4+Pj4gS2luZCBvZiBhIHNoYW1lIHNpbmNl
IEkgbGlrZSBob3cgZWFzeSBEcmFnb24gaXMgdG8gdXNlIHZzIHNvbWV0aGluZyBsaWtlCj4+Pj4+
Pj4gTUMgb3IgUmFuZ2VyIG9yIE5OTiAobXkgY3VycmVudCBmYXZvcml0ZSBvbmUgdGhhdCBkb2Vz
bid0IGhhdmUga2V5Ym9hcmQKPj4+Pj4+PiBjb25mbGljdHMpIHRob3VnaAo+Pj4+Pj4+IAo+Pj4+
Pj4+PiBPbiBGcmksIEFwciAwOCwgMjAyMiBhdCAwOTozNjoyOFBNICswMjAwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4g
Cj4+Pj4+Pj4+IFdlbGwgdGhlcmUgaXMgYSBjb250ZXh0IG1lbnUgICggZHJhZ29uRk0gY2FsbHMg
aXQgRGV0YWlscywgYmVjYXVzZSBpdCBhbHNvIHNob3dzIGZpbGUgcHJvcGVydGllcyBsaWtlIHNp
emUsIG1pbWUgYW5kIGEgbGlzdCBvZiBhdmFpbGFibGUgYWN0aW9ucykgd2l0aCBhbGwgYXZhaWxh
YmxlIG9wdGlvbnMgYnkgcHJlc3NpbmcgRjEwCj4+Pj4+Pj4+IFNvbWUgYWN0aW9ucyBhcmUgb25s
eSBhdmFpbGFibGUgZm9yIGdpdmVuIG1pbWUgdHlwZXMgbGlrZSBjb21wcmVzcyBjdXJyZW50IG9u
bHkgZm9yIHppcCBhbmQgdGFyLCBvdGhlcnMgY291bGQgYmUgYWRkYWQgdmVyeSBlYXN5LiBCeSBk
ZWZhdWx0IGRyYWdvbmZtIGRvZXMgbm90IHVzZSBhdG9vbCBidXQgdW56aXAgY29tbWFuZCBmb3Ig
emlwIGZpbGVzIGFuZCB0YXIgb2YgY291cnNlIGZvciB0YXIgdGhvc2UgbmVlZCB0byBiZSBpbnN0
YWxsZWQgb3IgY29uZnVyZWQgdG8gdXNlIHNvbWV0aGluZyBlbHNlLiAgKEkgY2FuIGdpdmUgeW91
IGEgbW9yZSBkZXRhaWxlZCBpbmZvcm1hdGlvbiBob3cgdG8gY29uZmlndXJlIHRob3NlIHN0dWZm
IGlmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbikKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IERyYWdvbkZNIHJl
YWRzIHRoZSBFc2NhcGUgc2VxdWVuY2VzIGZyb20gc3RkaW4gdG8gZGV0ZWN0IHNob3J0Y3V0cyAo
bGlrZSBhbG1vc3QgYW55IG90aGVyIENMSSBhcHBsaWNhdGlvbikKPj4+Pj4+Pj4gU29tZSBpbXBv
cnRhbnQgYmFzaWMgdHJhbnNsYXRpb24gaGVscCAod2Ugc2hvdWxkIGFkZCB0aGUgc2hvcnRjdXRz
IGFzIGNvbW1lbnRzIHRvIHRoZSBzZXR0aW5ncyBmaWxlIGxvbCApCj4+Pj4+Pj4+IF4gPSBDVFJM
Cj4+Pj4+Pj4+IFsgPSBBbHQKPj4+Pj4+Pj4gVXBwZXJjYXNlIGxldHRlciA9IHNoaWZ0ICsgbGV0
dGVyCj4+Pj4+Pj4+IGxvd2VyY2FzZSBsZXR0ZXIgPSBqdXN0IHRoZSBsZXR0ZXIKPj4+Pj4+Pj4g
QW4gb3RoZXIgZXhhbXBsZToKPj4+Pj4+Pj4gXlt1IHRyYW5zbGF0ZXMgYXMgY3RybCArIGFsdCAr
IHUKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNwZWNpYWxzIGxpa2UgYXJyb3cg
a2V5cyBvciBlc2NhcGUuCj4+Pj4+Pj4+IEVzY2FwZSBpcyB0cmFuc2xhdGVkIGJ5IF5bCj4+Pj4+
Pj4+IAo+Pj4+Pj4+PiAoYnkgdGhlIHdheSBtYW55IHNob3J0Y3V0cyBhcmUgc2ltaWxhciB0byBv
dGhlciBncmFwaGljYWwgZmlsZSBtYW5hZ2VycyBCVVQgc2hpZnQgKyBhcnJvdyBmb3IgbWFyayBm
aWxlcyBpcyBkaWZmZXJlbnQgYXMgaSBjb3VsZCBub3QgZmlndXJlIGhvdyB0byByZWFkIHRoaXMg
ZnJvbSBhbiBlc2NhcGUgc2VxdWVuY2UsIGJlY2F1c2UgdGhlcmUgaXMgbm8gdXBwZXJjYXNlIGFy
cm93ICpzbWlsZSopCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBEZXZlbG9wbWVudCB3YXMgc3BvbnNvcmVk
IGJ5IEYxMjMgcHJvamVjdC4gVG9kYXkga25vd24gYXMgc3Rvcm11eC4gU2FkbHkgaSBkaWQgbm90
IHdpcmUgYSBsb3Qgb2YgZG9jdW1lbnRhdGlvbiBidXQgeW91IGNhbiBhc2sgbWUgZXZlcnl0aGlu
ZyB5b3Ugd2FudCB0byBrbm93IDopLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gQ2hlZXJzIGNocnlzCj4+
Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIwMjIgdW0gMTg6NDEgc2NocmllYiBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+
Pj4+Pj4+IO+7v1NvIEkgZ2F2ZSBpdCBhIHNob3QgYW5kIGl0IGZlZWxzIGxvZ2ljYWwgYW5kIHdl
bGwgbGFpZCBvdXQsIGZvciB0aGUgbW9zdAo+Pj4+Pj4+Pj4gcGFydAo+Pj4+Pj4+Pj4gCj4+Pj4+
Pj4+PiBCVXQgSSdtIHN0cnVnZ2xpbmcgb24gYSBmZXcgdGhpbmdzLiBJIGhhdmUgaXQgZ29pbmcg
YW5kIHdhbnQgdG8gdW56aXAgYW4KPj4+Pj4+Pj4+IGFyY2hpdmUgZnJvbSB3aXRoaW4gaXQuIElu
IE5OTiBJIGNhbiBqdXN0IGRvIHRoYXQgYW5kIHdvcmsgd2l0aCBhdG9vbC4gSQo+Pj4+Pj4+Pj4g
Y2FuJ3Qgc2VlbSB0byBmaW5kIHRoZSBrZXlzIHRvIHN0YXJ0IGV4dHJhY3RpbmcgYW4gYXJjaGl2
ZSBvciBob3cKPj4+Pj4+Pj4+IERyYWdvbmZtIGhhbmRsZXMgdGhhdCBhdCBhbGwsIEl2ZSBvbmx5
IGZvdW5kIHVuZXh0cmFjdCB3aXRoIF4oVSBpbiB0aGUKPj4+Pj4+Pj4+IGNvbmZpZywgd2hpY2gg
SSd2ZSBubyBjbHVlIHdoYXQgaXQgdHJhbnNsYXRlcyB0byBpbiB0ZXJtcyBvZiBhY3R1YWwga2V5
cwo+Pj4+Pj4+Pj4gYXNpZGUgZnJvbSBjdHJsIGFuZCBVLiBJdCdzIHRoZSAoIEknbSBzdHVtcGVk
IG9uCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IFNlZSBteSBtYWluIGdyaXBlIHdpdGggTk5OIGlzIGlm
IEkgdXNlIGl0IGluIGEgdGVybWluYWwgSSBoYXZlIHRvIGhpdCBPLAo+Pj4+Pj4+Pj4gdzNtIGFu
ZCBjIHRvIG9wZW4gYW4gaHRtbCBkb2MgaW4gdzNtIGVsc2UgaXQgbG9hZHMgdXAgaW4gRmlyZWZv
eC4gTm93Cj4+Pj4+Pj4+PiBncmFudGVkIEkndmUgbm90IHRyaWVkIGl0IG9uIGEgcHVyZSBUVFkg
YnV0Li4ub24gYSB0ZXJtaW5hbCwgeGRnLW9wZW4KPj4+Pj4+Pj4+IG92ZXJyaWRlcyBicm93c2Vy
IGJlaW5nIHNldCBhcyBhbiBlbnZpcm9ubWVudCB2YXJpYWJsZQo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4+IAo+Pj4+IAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6A544109D
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 20:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635709860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O6TztLPK7W4RFmhreKcTi/Uqbl4pdLlSDGvGDqS8K9M=;
	b=hGsSUw+6Ee1quIxkZxWytASK4L96YFrEJCUoTRry9OJRGVNlomgZevTnUN10hUL2jXKokr
	N+aJeVwoEK0qLAPLFT2aff59VTkk4YSuvZFXudrjrm+iL9rq+Y83uEfXkYbIyfwd9Xt175
	O0foP0TkuJccyU51apHPMeyGJPjqTyY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-832ulQIPO4SijWRGOF9V9g-1; Sun, 31 Oct 2021 15:50:45 -0400
X-MC-Unique: 832ulQIPO4SijWRGOF9V9g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A291A362F8;
	Sun, 31 Oct 2021 19:50:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B44D0100EBBF;
	Sun, 31 Oct 2021 19:50:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16DF61809C84;
	Sun, 31 Oct 2021 19:50:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VJoL3F027201 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 15:50:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D30642026D5D; Sun, 31 Oct 2021 19:50:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE5622026D48
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:50:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0E681066558
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:50:18 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-423-Hyx86_DnMKqOy7OqDixsAw-1;
	Sun, 31 Oct 2021 15:50:01 -0400
X-MC-Unique: Hyx86_DnMKqOy7OqDixsAw-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 91F8AA076E
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:49:28 +0100 (CET)
Message-ID: <c1d01788-8258-39c2-e861-de8e4e8a1113@slint.fr>
Date: Sun, 31 Oct 2021 20:50:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
To: blinux-list@redhat.com
References: <2ecf58b4-4c80-0018-4c80-93d5dcf4d476@slint.fr>
	<8182AB42-45DC-4800-8F7F-AA4D5D5CEB7F@gmail.com>
In-Reply-To: <8182AB42-45DC-4800-8F7F-AA4D5D5CEB7F@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VJoL3F027201
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WW91IGNhbiBpbnN0YWxsIGluIGEgMzIgR0Igb3IgcHJlZmVyYWJseSBpbiBhIDY0IEdCIFVTQiBz
dGljayBidXQgaXQgd2lsbCBiZQpyYXRoZXIgc2xvdy4KCkJldHRlciwgaWYgdGhlIGNvbXB1dGVy
IGhhcyBhbiBTRCBjYXJkIHNsb3QgYW5kIGlzIGFibGUgdG8gYm9vdCBmcm9tIGEgClNEIGNhcmQK
KG5vdCBhbGwgZG8pLCB1c2UgYSBnb29kIHF1YWxpdHkgU0QgY2FyZC4KCkluIGFueSBjYXNlIGFu
IGV4dGVybmFsIFNTRCBpcyB3YXkgZmFzdGVyLgoKQ2hlZXJzLApEaWRpZXIKCkxlIDMxLzEwLzIw
MjEgw6AgMjA6MjgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPiBJIGFtIGdvaW5nIHRocm91Z2ggdGhlIGhhbmRib29rIGFuZCB0cnlpbmcgdG8gdW5kZXJz
dGFuZCB0aGUgdmFyaW91cyBjb25jZXB0cy4gSSBoYXZlIG5vdCBzZWVuIHRoZSBpbnN0YWxsYXRp
b24gaW4gYSB2aXJ0dWFsIGJveCB5ZXQuIEkgYW0gd29uZGVyaW5nIGlmIEkgY2FuIGluc3RhbGwg
aXQgb24gYSAzMiBvciA2NCBHQiBVU0Igc3RpY2ssIG9yIGRvZXMgaXQgaGF2ZSB0byBiZSBhbiBl
eHRlcm5hbCBTU0Q/Cj4gUmVnYXJkcywKPiBJYnJhaGltCj4gCj4gCj4gU2VudCBmcm9tIG15IGlQ
aG9uZQo+IAo+PiBPbiBPY3QgMzEsIDIwMjEsIGF0IDI6NDMgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiDvu79I
aSBJYnJhaGltLgo+Pgo+PiBObywgdGhlcmUgaXMgbm8gbGl2ZSBpbnN0YWxsIGZvciBTbGludC4K
Pj4KPj4gSG93ZXZlcjoKPj4KPj4gMSkgQmVmb3JlIHlvdSBpbnN0YWxsIGl0IG9uIHlvdXIgaGFy
ZCBkaXNrLCB5b3UgY2FuIGluc3RhbGwgYW5kIHJ1biBpdCBpbiBhCj4+IFZpcnR1YWxCb3ggdmly
dHVhbCBtYWNoaW5lLiBUaGVuLCBjaG9vc2UgdGhlIGludGVsIGhkIGF1ZGlvIGNvbnRyb2xsZXIg
cmlnaHQKPj4gYWZ0ZXIgdGhlIHZpcnR1YWwgbWFjaGluZSBjcmVhdGlvbi4gdG8gcHJldmVudCBs
b3NzIG9mIHNwZWVjaCBkdXJpbmcKPj4gaW5zdGFsbGF0aW9uLgo+Pgo+PiAyKSBJZiB5b3UgY2Fu
IGFmZm9yZCBpdCB5b3UgY2FuIGluc3RhbGwgU2xpbnQgaW4gYSBkZWRpY2F0ZWQgaGFyZCBkcml2
ZSBvciBTU0QKPj4gd2hpY2ggY2FuIGJlIGFuIGFuIGludGVybmFsIHNlY29uZCBkcml2ZSBvciBh
biBleHRlcm5hbCBkcml2ZSBVU0IgY29ubmVjdGVkLgo+Pgo+PiAzKSBZb3UgY2FuIHNhZmVseSBz
aGFyZSBhIGRyaXZlIGJldHdlZW4gV2luZG93cyBhbmQgU2xpbnQsIGlmIFdpbmRvd3MgYm9vdHMg
aW4KPj4gVUVGSSBtb2RlLgo+Pgo+PiA0KSBJbiBhbnkgY2FzZSB0aGUgaW5zdGFsbGVyIHdpbGwg
cHJlc2VudHMgeW91IGFsbCBwb3NzaWJpbGl0aWVzIGZvcgo+PiBpbnN0YWxsYXRpb24gYW5kIHdp
bGwgbGV0IHlvdSByZXZpZXcgYWxsIGluc3RhbGxhdGlvbiBvcHRpb25zIGJlZm9yZSB3cml0aW5n
Cj4+IGFueXRoaW5nIG9uIGEgaGFyZCBkaXNrLiBJZiB5b3UgY2hhbmdlIHlvdXIgbWluZCB5b3Ug
d2lsbCBiZSBhYmxlIHRvIGNoYW5nZQo+PiBhbnkgb3B0aW9uLiBJZiB5b3UgZGVjaWRlIHRvIGlu
c3RhbGwgbGF0ZXIgb3Igbm90IGF0IGFsbCwgYWZ0ZXIgYSByZWJvb3QgV2luZG93cwo+PiB3aWxs
IHN0YXJ0IGFzIHVzdWFsLgo+Pgo+PiBBZnRlciBpbnN0YWxsYXRpb24geW91IHdpbGwgYmUgYWJs
ZSB0byBjaG9vc2Ugd2hpY2ggc3lzdGVtIHRvIHN0YXJ0IGF0IGJvb3QgdXAuCj4+IFdoZW4geW91
IHdpbGwgaGVhciBhIHNvdW5kIHRlbGxpbmcgeW91IHRoYXQgdGhlIG1hY2hpbmUgaXMgcmVhZHkg
dG8gYm9vdCwganVzdAo+PiBwcmVzcyBFbnRlciB0byBzdGFydCBTbGludCBvciBwcmVzcyBhcnJv
dyBkb3duIHRoZW4gRW50ZXIgdG8gc3RhcnQgV2luZG93cy4KPj4KPj4gRmVsbCBmcmVlIHJlcXVp
cmUgbW9yZSBndWlkYW5jZSBpbiBvbmUgb2YgdGhlIHN1cHBvcnQgY2hhbm5lbHMgbGlzdGVkIGlu
IHRoZQo+PiBIYW5kQm9vay4KPj4KPj4gSG9wZSB0aGlzIGhlbHBzCj4+IERpZGllcgo+PiAtLQo+
PiBEaWRpZXIgU3BhaWVyCj4+IFNsaW50IG1haW50YWluZXIKPj4gZGlkaWVyIGF0IHNsaW50IGRv
dCBmcgo+PiBMZSAzMS8xMC8yMDIxIMOgIDE2OjQxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+IFRoYW5rcyBhIG1pbGxpb24gRGlkaWVyLAo+Pj4gVGhp
cyBpcyBhIGdyZWF0IGhhbmRib29rLiBPbmUgb2YgdGhlIHRoaW5ncyB3aGljaCBkaXNjb3VyYWdl
ZCBtZSBmcm9tIGFkb3B0aW5nIGxpbnV4IGluIHRoZSBwYXN0IHdhcyB0aGUgbGFjayBvZiBlYXN5
IHRvIGZvbGxvdyBkb2N1bWVudGF0aW9ucy4gRXZlcnl0aW1lIEkgdHJpZWQsIEkgZm91bmQgbXlz
ZWxmIGJyb3dzaW5nIGluIGhpZ2hseSB0ZWNobmljYWwgZG9jdW1lbnRzIHRoYXQgc291bmRlZCBs
aWtlIGEgZm9yZWlnbiBsYW5ndWFnZSB0byBtZS4gVGhpcyBoYW5kYm9vayBzZWVtcyB0byBhdm9p
ZCB0aGlzIHByb2JsZW0uCj4+PiBJIHdpbGwgY2VydGFpbmx5IHRyeSBzbGludCwgaWYgaXQgY2Fu
IGJlIHVzZWQgYXMgYSBsaXZlIGluc3RhbGwgd2l0aG91dCBoYXZpbmcgdG8gcGh5c2ljYWxseSBp
bnN0YWxsIG9uIG15IGhhcmQgZGlzYy4gSSB3aWxsIGFsc28gYnJvd3NlIHRoaXMgaGFuZGJvb2sg
dG8gbGVhcm4gbW9yZSBhYm91dCBzbGludC4KPj4+IFRoYW5rcyBmb3IgdGhpcy4gSSB3aWxsIGNl
cnRhaW5seSBuZWVkIHlvdXIgaGVscCBpZiBJIGluc3RhbGwgaXQgb24gbXkgaGFyZCBkaXNjLiBX
aGF0IEkgd2FudCBpZGVhbGx5IGlzIHRoZSBhYmlsaXR5IHRvIGhhdmUgYm90aCBsaW51eCBhbmQg
d2luZG93cyBydW5uaW5nIG9uIHRoZSBzYW1lIG1hY2hpbmUsIGFuZCBJIGNob29zZSB3aGljaCBv
bmUgdG8gc3RhcnQgYXQgYm9vdHVwLgo+Pj4gUmVnYXJkcywKPj4+IElicmFoaW0KPj4+IE9uIDEw
LzMxLzIxIDQ6MDYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+Pj4gSGVsbG8gSWJyYWhpbSwKPj4+PiB0aGlzIGlzIGVhc2lseSBkb25lIHdpdGggU2xpbnQs
IGlmIFdpbmRvd3MgYm9vdHMgaW4gRUZJIG1vZGU6Cj4+Pj4gaHR0cHM6Ly9zbGludC5mci9kb2Mv
SGFuZEJvb2suaHRtbAo+Pj4+IENoZWVycywKPj4+PiBEaWRpZXIKPj4+PiAtLQo+Pj4+IERpZGll
ciBTcGFpZXIKPj4+PiBTbGludCBtYWludGFpbmVyCj4+Pj4gTGUgMzEvMTAvMjAyMSDDoCAwNDox
OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4+IEhl
bGxvIGZvbGtzLAo+Pj4+PiBJIGhhdmUgYmVlbiBwbGF5aW5nIHdpdGggTGludXggbWludCBhbmQg
QWNjZXNzaWJsZSBDb2NvbnV0IGZvciBvdmVyIDI0IGhvdXJzLiBJIGFtIGdldHRpbmcgdG8gbGlr
ZSB0aGlzIHN5c3RlbS4gSG93ZXZlciwgV2hlbiBJIGNvbnRlbXBsYXRlZCBpbnN0YWxsaW5nIG9u
IG15IGhhcmQgZGlzaywgSSBmb3VuZCB0aGUgaW5zdGFsbGF0aW9uIHByb2Nlc3MgYSBsaXR0bGUg
Y29uZnVzaW5nIGFuZCBzY2FyeS4gSSBhbHdheXMgcmV2ZXJ0ZWQgYmFjayBhbmQgYWJvcnRlZCB0
aGUgaW5zdGFsbGF0aW9uIHRvIHByZXZlbnQgYW4gdW5pbnRlbmRlZCBkYW1hZ2UgdG8gbXkgd2lu
ZG93cyBvcGVyYXRpbmcgc3lzdGVtLgo+Pj4+PiBJZiBhbnkgb2YgeW91IGhhdmUgc3VjY2Vzc2Z1
bGx5IG1hbmFnZWQgdG8gaW5zdGFsbCBsaW51eCBhbG9uZ3NpZGUgd2l0aCB3aW5kb3dzIG9uIHRo
ZSBzYW1lIGhhcmQgZGlzaywgcGxlYXNlIGFkdmlzZSBtZSBvbiBob3cgdG8gZ28gYWJvdXQgaXQg
c2FmZWx5Lgo+Pj4+PiBSZWdhcmRzLAo+Pj4+PiBJYnJhaGltCj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=


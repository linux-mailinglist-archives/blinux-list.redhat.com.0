Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 42A273DD3B5
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 12:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627900272;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UdGg7P1IxAGvOodcWn4wKlbS6W8hzhYdF+aI8s5EjDg=;
	b=LvMiPoDhxxk5xyqjtjw1cDGwmqUhF37T5fvSBP4XG/Mv/rKoERNbEsArExESKGYz15ge1h
	nhMZWBRnznkC3FjU4SH6ZyXrezJVCWhq5CAALgUI2khd5jup9FKpNBvmHEB1CkxRtETbDT
	HkbIA69WR+eGZEy+vDbI/pgcJRNKkPc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-XQaTKvZsP9uWUtoZ4-svwg-1; Mon, 02 Aug 2021 06:31:10 -0400
X-MC-Unique: XQaTKvZsP9uWUtoZ4-svwg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B8B51009606;
	Mon,  2 Aug 2021 10:31:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DDE0779D0;
	Mon,  2 Aug 2021 10:31:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C6404BB7C;
	Mon,  2 Aug 2021 10:31:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 172AUwGn010053 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 06:30:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2C7F0202F2EA; Mon,  2 Aug 2021 10:30:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 269E9202F2E7
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 10:30:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34181801E80
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 10:30:52 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-207-HbjAlysWMna5mnRQ-5uJyg-1;
	Mon, 02 Aug 2021 06:30:49 -0400
X-MC-Unique: HbjAlysWMna5mnRQ-5uJyg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 927CAA40FD
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 10:30:44 +0200 (CEST)
Subject: Re: Installing the Orolux IBMTTS version of Eloquence on Slint?
To: blinux-list@redhat.com
References: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
	<87zgu0xop6.fsf@brainpower.wer>
	<0a9f8d88-9149-cb20-a3bb-82cf860cbee0@gmail.com>
Message-ID: <e7299b99-0dbc-32be-7425-73ff8dacd166@slint.fr>
Date: Mon, 2 Aug 2021 12:30:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <0a9f8d88-9149-cb20-a3bb-82cf860cbee0@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 172AUwGn010053
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKZWl0aGVyIHNwZWVjaC1kaXNwYXRjaGVyIG9yIHRoZSB2b3hpbiBpbnN0YWxs
ZXIgaXMgbm90IHVwIHRvIGRhdGUuCgpUaGUgb3V0cHV0IG9mIDoKbHMgL3Zhci9sb2cvcGFja2Fn
ZXMvc3BlZWNoLWRpc3BhdGNoZXIqCnNob3VsZCBiZToKL3Zhci9sb2cvcGFja2FnZXMvc3BlZWNo
LWRpc3BhdGNoZXItZ2l0MjQ2ODM5ZGUteDg2XzY0LTFzbGludAoKSWYgbm90LCB5b3UgbmVlZCB0
byBrZWVwIHlvdXIgc3lzdGVtIHVwIHRvIGRhdGUuCkFzIGEgcmVtaW5kZXIgZm9yIHdob2V2ZXIg
aW4gdGhlIHNhbWUgc2l0dWF0aW9uLCB0eXBlIGFzIHJvb3Q6CnNsYXB0LWhldCAtdQpzbGFwdC1n
ZXQgLS11cGdyYWRlCnNsYXB0LWdldC0taW5zdGFsbC1zZXQgc2xpbnQKCklmIHllcywgaW4gY2Fz
ZSB5b3VyIHZveGluIHRhcmJhbGwgYmUgb2xkLCBkb3dsb2FkIHRoZSBtb3N0IHJlY2VudCBvbmUK
KDMuM3JjNSBhdCB0aW1lIG9mIHdyaXRpbmcpClRJUDogeW91IGFsd2F5cyBjYW4gZ2V0IHRoZSBj
dXJybmV0IHZlcnNpb24gcmUtdXNpbmcgdGhlIHNhbWUgZG93bmxvYWQgCmxpbmsocykKeW91IGdv
dCB3aGVuICBidXlpbmcgdGhlIHZvaWNlKHMpCgpUaGVuIHJ1biB0aGUgaW5zdGFsbGVyIGFuZCBq
dXN0IHByZXNzIEVudGVyIHRvIGFncmVlCm9uIGFsbCB0aHJlZSBxdWVzdGlvbnMKCklmIGFsbCB0
aGF0IGZhaWxzLCBwbGVhc2UgZ2V0IGJhY2sgdG8gdXMuCkRpZGllcgotLQpEaWRpZXIgU3BhaWVy
ClNsaW50IG1haW50YWluZXIKCgpMZSAwMi8wOC8yMDIxIMOgIDExOjMyLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGksCj4gCj4gCj4gSXQncyB0ZWxs
aW5nIG1lLCAieW91ciB2ZXJzaW9uIG9mIHNwZWFjaGRpc3BhdGNoZXIgaGFzIG5vdCBiZWVuIAo+
IHJlY29nbml6ZWQiIHdoeSBpdCdzIGRvaW5nIHRoYXQsIEkgaGF2ZSBubyBpZGVhLgo+IAo+IAo+
IFdhcm0gcmVnYXJkcywKPiAKPiBCcmFuZHQgU3RlZW5rYW1wCj4gCj4gU2VudCB1c2luZyBUaHVu
ZGVyYmlyZCBmcm9tIFNsaW50Cj4gCj4gT24gOC8yLzIxIDk6NTggQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhpLAo+Pgo+PiBJIHN1Y2Nlc3NmdWxseSBp
bnN0YWxsZWQgVm94aW4gb24gbXkgU2xpbnQgbWFjaGluZS4gQXQgd2hhdCBwb2ludCBhcmUKPj4g
eW91IGhhdmluZ8KgIHByb2JsZW1zPwo+Pgo+PiBXaGF0IEkgZGlkIHdhcyB0bwo+PiAxLiBUYXIg
eHhmenYgdm94aW4tMy4wLnRhci5nego+PiAyLiBDaGFuZ2UgdG8gdGhlIGZvbGRlciB3aXRoIHRo
ZSB1bnppcHBlZCBmaWxlcyB3aXRoIGNkIHZveGluLTMuMC8KPj4gMy4gQ2hhbmdlIHRvIHJ1biBh
cyByb290IHdpdGggc3UgYW5kIHByZXNzIGVudGVyLgo+PiA0LiBBcyByb290LCBydW4gdGhlIGlu
c3RhbGwgc2NyaXB0LCAuL2luc3RsbC5zaCBhbmQgeW91IGFyZSBkb25lLgo+Pgo+PiBHb29kIGx1
Y2ssCj4+Cj4+Cj4+Cj4+Cj4+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyaXRlczoKPj4+IEhpIGFsbCwKPj4+Cj4+Pgo+Pj4gT2ss
IHRoaXMgb25lIGhhcyBiZWVuIGRyaXZpbmcgbWUgY3JhenkuIEkgaGF2ZSBzdWNjZXNzZnVsbHkg
aW5zdGFsbGVkCj4+PiBlbG9xdWVuY2Ugb24gcHVyZSBBcmNoLCBNYW5qYXJvLCBGZWRvcmEsIERl
YmlhbiwgVWJ1bnR1IGFuZCBNaW50LiBJIGp1c3QKPj4+IGNhbm5vdCBnZXQgdGhlIGRhbW4gdGhp
bmcgdG8gaW5zdGFsbCBvbiBteSBTbGludCBzeXN0ZW0uCj4+Pgo+Pj4KPj4+IElmIGFueW9uZSBj
YW4gaGVscCwgSSB3b3VsZCBiZSByZWFsbHkgZ3JhdGVmdWwuCj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==


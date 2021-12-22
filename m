Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 175DA47D55C
	for <lists+blinux-list@lfdr.de>; Wed, 22 Dec 2021 17:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640191499;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cGov8Z8jd4wUExnZUty6viSHa6sloEnrOc51uhK7t2E=;
	b=SUlK7JYcYNSWYKO/GwVfImaHL029MSZ3kIR70gW929X19nFoCzHS4gw7L/SfTUoqzxcJoy
	ExoqoJPdDUrY00DH0jC1r/RYH6rilBH5pGkQxNI4uM/WDx8MD64mkOXUdQES3RxTTpkNgp
	uNQaCyTAP9HuxsFE9+QY08JqUxTzbQU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-K7-jz5NrMbi9hqfY__cemQ-1; Wed, 22 Dec 2021 11:44:56 -0500
X-MC-Unique: K7-jz5NrMbi9hqfY__cemQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31586801B2F;
	Wed, 22 Dec 2021 16:44:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5DC470394;
	Wed, 22 Dec 2021 16:44:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3100E4BB7B;
	Wed, 22 Dec 2021 16:44:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BMGiVXF008325 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 22 Dec 2021 11:44:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C15E24047279; Wed, 22 Dec 2021 16:44:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD8EA404727C
	for <blinux-list@redhat.com>; Wed, 22 Dec 2021 16:44:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A05363C0013A
	for <blinux-list@redhat.com>; Wed, 22 Dec 2021 16:44:31 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-211-vNHQL_FGPi-EQIHJvx4Xbg-1; Wed, 22 Dec 2021 11:44:28 -0500
X-MC-Unique: vNHQL_FGPi-EQIHJvx4Xbg-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 8ADC4FA269;
	Wed, 22 Dec 2021 11:38:28 -0500 (EST)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 8ADC4FA269
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 1BMGcRYm383196;
	Wed, 22 Dec 2021 11:38:27 -0500
Date: Wed, 22 Dec 2021 11:38:27 -0500
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Subject: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YcNUgwlCFtiAmY3Q@rednote.net>
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
	<20210609072927.3igbp7jvopq3c6f7@begin>
	<alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
	<20210609110828.kpo76f2zmbixjran@begin>
	<alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
	<YMdZA0DL4BgCAShe@rednote.net>
	<6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
	<YNMr0Pathc/mqx1L@rednote.net>
MIME-Version: 1.0
In-Reply-To: <YNMr0Pathc/mqx1L@rednote.net>
X-Operating-System: Linux opera.rednote.net 5.15.8-200.fc35.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BMGiVXF008325
X-loop: blinux-list@redhat.com
Cc: blinux-list@redhat.com, Kelly Prescott <kprescott@coolip.net>,
	speakup@linux-speakup.org, Samuel Thibault <samuel.thibault@aquilenet.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpJIGhhdmUgc3BlbnQgc29tZXRpbWUgdG9kYXkgdHJ5aW5nIHRvIGdldCBlc3BlYWt1cCB3
b3JraW5nIG9uIG9uZSBvZiBteQp0d28gTGludXggc3lzdGVtcy4gSSBub3cgaGF2ZSBpdCB3b3Jr
aW5nIHdpdGggYWxzYS1saWItMS4yLjYuMS0xIGFuZApFc3BlYWt1cC0wLjkwIG9uIEFyY2gsIHVz
aW5nIHN0YW5kYXJkIEFyY2ggcGFja2FnaW5nLgoKV2hhdCB3YXMgdGhlIGZpeD8KCkkgaW50cm9k
dWNlZCBhIGZpbGU6CgovZXRjL2Fzb3VuZC5jb25mCgo8YmVnaW4gZmlsZSBjb250ZW50cz4KY3Rs
LiFkZWZhdWx0IHsKICAgICAgICB0eXBlIGh3CgkgICAgICAgIGNhcmQgMAoJCX0KCgkJPGVuZCBm
aWxlIGNvbnRlbnRzPgoKCQlXaHkgdGhhdCBzaG91bGQgbWF0dGVyIGlzIGJleW9uZCBtZS4gU2Vl
bXMgbGlrZSB0aGlzCgkJc2hvdWxkIGJlIHRoZSBkZWZhdWx0IGJlaGF2aW9yLCBubz8KCgkJQmVz
dCwKCgkJSmFuaW5hCgpKYW5pbmEgU2Fqa2Egd3JpdGVzOgo+IEhpLCBBbGV4YW5kZXI6Cj4gCj4g
SSByYW0gYW4gLVN5dSB1cGdyYWRlIG9uIG9uZSBvZiBteSB0d28gbWFjaGluZXMgYW5kIHJlYm9v
dGVkLiBJIGNhbgo+IGNvbmZpcm0gZXNwZWFrdXAgMC45LjAgYW5kIGFsc286Cj4gCj4gYWxzYS1s
aWIgMS4yLjUuMS0zCj4gYWxzYS11dGlscyAxLjIuNS4xLTEKPiAKPiBVbmZvcnR1bmF0ZWx5LCBJ
IGRvIG5vdCBnZXQgU3BlYWt1cCBzcGVlY2guIERvaW5nICJlc3BlYWsgaGVsbG8iIHdvcmtzLAo+
IGFzIGRvIGFwbGF5IGNvbW1hbmRzLgo+IAo+IEkgd291bGQgYWxzbyBub3RlIHRoZSBhbWl4ZXIg
Y29tbWFuZCBlbnZpcm9ubWVudCBzZWVtcyBPSyBub3csIGJ1dAo+IHRoYXQncyBhIHNlcGFyYXRl
IGlzc3VlLgo+IAo+IEkgd2lsbCBsZWF2ZSB0aGluZ3MgYXMgdGhleSBhcmUgZm9yIG5vdywgcmF0
aGVyIHRoYW4gZG93bnZlcnNpb25pbmcKPiBhbHNhLWxpYiwgaW4gY2FzZSBJIGNhbiBnaXZlIHlv
dSBzb21lIG90aGVyCj4gZGVidWdnaW5nIG91dHB1dC4gTGV0IG1lIGtub3csIGFuZCB0aGFua3Mg
Zm9yIHlvdXIgZWZmb3J0cy4KPiAKPiBKYW5pbmEKPiAKPiAKPiBBbGV4YW5kZXIgRXBhbmVzaG5p
a292IHdyaXRlczoKPiA+IDE0LjA2LjIwMjEgMTY6MjYsIEphbmluYSBTYWprYSDQv9C40YjQtdGC
Ogo+ID4gPiBIaSwgQWxsOgo+ID4gPiAKPiA+ID4gSnVzdCByZXR1cm5pbmcgdG8gdGhpcyB0b3Bp
YyB0byBhZGQgbXkgb3duIGV4cGVyaWVuY2Ugb24gdXBkYXRpbmcgbXkKPiA+ID4gQXJjaCBMaW51
eCBpbnN0YWxsYXRpb24gb24gdHdvIG1hY2hpbmVzIG92ZXIgdGhlIHdlZWtlbmQuCj4gPiA+IAo+
ID4gPiBJIGFsc28gcmFuIGludG8gcHJvYmxlbXMgdGhhdCByZW5kZXJlZCBTcGVha3VwIHVudXNh
YmxlIHdpdGggZXNwZWFrdXAuCj4gPiA+IFJldmVydGluZyBhbHNhLWxpYiBmaXhlZCB0aGUgU3Bl
YWt1cCBpc3N1ZS4gQXMgd2UgZG9uJ3Qga25vdyBob3cgbG9uZwo+ID4gPiB0aGUgcHJvYmxlbSBt
YXkgcGVyc2lzdCwgSSd2ZSBhZGRlZCB0aGUgZm9sbG93aW5nIHRvIG15Cj4gPiA+IC9ldGMvcGFj
bWFuLmNvbmY6Cj4gPiA+IAo+ID4gPiBJZ25vcmVQa2cgICA9YWxzYS1saWIKPiA+ID4gCj4gPiA+
IAo+ID4gPiBJIGFsc28gZGlzY292ZXJlZCBwcm9ibGVtcyB3aXRoIGFsc2EtdXRpbCBwYWNrYWdl
cy4gQSBjb21tYW5kIGFzCj4gPiA+IHN0cmFpZ2h0IGZvcndhcmQgYXM6Cj4gPiA+IAo+ID4gPiBh
bWl4ZXIgY29udHJvbHMKPiA+ID4gCj4gPiA+IHJldHVybmVkIG1lYW5pbmdsZXNzIHJlc3VsdHMu
IEZ1cnRoZXIsIHNldmVyYWwgb2YgbXkgYXVkaW8gZGV2aWNlcyB3ZXJlCj4gPiA+IHNpbGVudCB3
aXRoIHZvbHVtZXMgc2V0IHRvIDAsIGFuZCB0aGUgc3dpdGNoIHNldCB0byAiZmFsc2UuIiBTbywg
SSBhbHNvCj4gPiA+IGFkZGVkIGEgbGluZSBsaWtlIHRoZSBhYm92ZSBmb3IgYWxzYS11dGlscy4K
PiA+ID4gCj4gPiA+IE5vdCBzdXJlIGhvdyB0byBiZSBoZWxwZnVsIHRvIGFueW9uZSBpbnRlcmVz
dGVkIGluIGRlYnVnZ2luZywgYnV0IEkgZG8KPiA+ID4gaGF2ZSB0d28gbWFjaGluZXMgYW5kIGFt
IHdpbGxpbmcgdG8gdHJ5LiBQbGVhc2UgYWR2aXNlLgo+ID4gPiAKPiA+ID4gQmVzdCwKPiA+ID4g
Cj4gPiA+IEphbmluYQo+ID4gPiAKPiA+IEhlbGxvIGV2ZXJ5b25lLiBwbGVhc2UgdGVzdCBlc3Bl
YWt1cCAwLjkwIHdpdGggbGF5dGVzdCBhbHNhLWxpYiBvbiBBcmNoIExpbnV4Lgo+ID4gSSB3aWxs
IGJlIGhhcHB5IHRvIGhlYXIgdGhlIHJlc3VsdHMuCj4gPiAKPiA+IC0tIAo+ID4gU2luY2VyZWx5
LCBBbGV4YW5kZXIuCj4gCj4gLS0gCj4gCj4gSmFuaW5hIFNhamthCj4gaHR0cHM6Ly9saW5rZWRp
bi5jb20vaW4vanNhamthCj4gCj4gTGludXggRm91bmRhdGlvbiBGZWxsb3cKPiBFeGVjdXRpdmUg
Q2hhaXIsIEFjY2Vzc2liaWxpdHkgV29ya2dyb3VwOglodHRwOi8vYTExeS5vcmcKPiAKPiBUaGUg
V29ybGQgV2lkZSBXZWIgQ29uc29ydGl1bSAoVzNDKSwgV2ViIEFjY2Vzc2liaWxpdHkgSW5pdGlh
dGl2ZSAoV0FJKQo+IENvLUNoYWlyLCBBY2Nlc3NpYmxlIFBsYXRmb3JtIEFyY2hpdGVjdHVyZXMJ
aHR0cDovL3d3dy53My5vcmcvd2FpL2FwYQo+IAoKLS0gCgpKYW5pbmEgU2Fqa2EKKHNoZS9oZXIv
aGVycykKaHR0cHM6Ly9saW5rZWRpbi5jb20vaW4vanNhamthCgpMaW51eCBGb3VuZGF0aW9uIEZl
bGxvdwpFeGVjdXRpdmUgQ2hhaXIsIEFjY2Vzc2liaWxpdHkgV29ya2dyb3VwOglodHRwOi8vYTEx
eS5vcmcKClRoZSBXb3JsZCBXaWRlIFdlYiBDb25zb3J0aXVtIChXM0MpLCBXZWIgQWNjZXNzaWJp
bGl0eSBJbml0aWF0aXZlIChXQUkpCkNvLUNoYWlyLCBBY2Nlc3NpYmxlIFBsYXRmb3JtIEFyY2hp
dGVjdHVyZXMJaHR0cDovL3d3dy53My5vcmcvd2FpL2FwYQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=


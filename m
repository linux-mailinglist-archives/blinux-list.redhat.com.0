Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id F31CF28501E
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 18:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602002733;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=du8HT3mgrd65g5yhh7XlHwsoqdlX+gCBrLcwAY7luyw=;
	b=cMUKPNeg3FlOyOiF295ZG4rM128blWTzYc5eM1htUVglF1BHwTaN5ZAHP+5ZmVPHljy+08
	qGG/qCSTcUpMW2jd19GOq2KffNZtd3EkkxDJsBKFHU4KQvzSjzMMBC1qalKlTFFLj1Gohf
	BIoL2nshErTx62BvjYb0uU3JU2XjY7w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-ykjlQBcRPDCATglOBcObNg-1; Tue, 06 Oct 2020 12:45:18 -0400
X-MC-Unique: ykjlQBcRPDCATglOBcObNg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC91010BBECD;
	Tue,  6 Oct 2020 16:45:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B256676644;
	Tue,  6 Oct 2020 16:45:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E41F181A06C;
	Tue,  6 Oct 2020 16:45:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096GixBN029584 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 12:45:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5222FEAFAE; Tue,  6 Oct 2020 16:44:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CE08EAF90
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 16:44:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DAE458582AD
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 16:44:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-168-29AjlZ25Og2N_hHcui6jiw-1;
	Tue, 06 Oct 2020 12:44:50 -0400
X-MC-Unique: 29AjlZ25Og2N_hHcui6jiw-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 2AD91BE27E
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 17:44:02 +0200 (CEST)
Subject: Re: VPN accessibility?
To: blinux-list@redhat.com
References: <160195898709.6.4515232516938989079.1173897@slmail.me>
	<20201006094452.6cb527d9@bigbox.attlocal.net>
Message-ID: <4526946b-2de0-5a4f-b345-887e7322c11d@slint.fr>
Date: Tue, 6 Oct 2020 18:44:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201006094452.6cb527d9@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 096GixBN029584
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpUaW0sIHRoYW5rcyBmb3IgdGhlIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24uClNMLCBmb3Ig
U2xpbnQ6CgpJIGp1c3QgY2hlY2tlZCwgYm90aCBvcGVuY29ubmVjdCBhbmQgd2lyYWd1YXJkIGFy
ZSBhdmFpbGFibGUKZnJvbSBodHRwczovL3NsYWNrYnVpbGRzLm9yZy4KCkZvciB0aGUgbGF0dGVy
IHlvdSBuZWVkIHRvIGdldCBib3RoIHdpcmVndWFyZC1saW51eC1jb21wYXQKYW5kIHdpcmVndWFy
ZC10b29scy4KCkxpbmtzIGJlbG93OgpodHRwOi8vc2xhY2tidWlsZHMub3JnL3JlcG9zaXRvcnkv
MTQuMi9uZXR3b3JrL29wZW5jb25uZWN0LwpodHRwOi8vc2xhY2tidWlsZHMub3JnL3JlcG9zaXRv
cnkvMTQuMi9uZXR3b3JrL3dpcmVndWFyZC1saW51eC1jb21wYXQvCmh0dHA6Ly9zbGFja2J1aWxk
cy5vcmcvcmVwb3NpdG9yeS8xNC4yL25ldHdvcmsvd2lyZWd1YXJkLXRvb2xzLwoKQ2hlZXJzLCBE
aWRpZXIKClBTIEkgcmVudCBhIHZwcyBAIGxpbm9kZSwgNSAkL21vbnRoIGZvciB0aGUgU2xpbnQg
d2Vic2l0ZQpodHRwczovL3NsaW50LmZyIGluY2xkdWluZyBhIHdpa2ksIGEgYmxvZyBhbmQgbXkg
ZW1haWwgc2VydmVyLgoKVGhlaXIgc2VydmljZSBhbmQgc3VwcG9ydCBhcmUgb3V0c3RhbmRpbmcu
CgpMZSAwNi8xMC8yMDIwIMOgIDE2OjQ0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6Cj4gVGltIGhlcmUuICBUaGVyZSBhcmUgdGhyZWUgbWFqb3IgVlBOIG9w
dGlvbnMgYXJvdW5kIGFuZCBtb3N0IFZQTgo+IHByb3ZpZGVycyBzdXBwb3J0IG9uZSBvciBtb3Jl
IG9mIHRoZW0uCj4gCj4gMSkgT3BlblZQTjogIFRoaXMgaXMgdGhlIG1vc3QgY29tbW9uLCBoYXZp
bmcgb3Blbi1zb3VyY2UgY2xpZW50cyBhbmQKPiBzZXJ2ZXJzLiAgSXQncyBhIGJpdCBhbm5veWlu
ZyB0byBjb25maWd1cmUsIGJ1dCBmYWlybHkgcG9wdWxhci4gIE1vc3QKPiBvZiB0aGUgZnJlZSBh
bmQgbG93LWNvc3QgVlBOIHByb3ZpZGVycyBvZmZlciB0aGlzLgo+IAo+IDIpIG9wZW5jb25uZWN0
OiAgVGhpcyBpcyBhIENpc2NvIHRlY2hub2xvZ3kgKHdoaWNoIGFwcGVhcnMgdG8gYmUgdXNlZAo+
IGJ5IHNvbWUgb3RoZXIgY29tcGFuaWVzIHRvbykuICBUaGUgb3BlbmNvbm5lY3QgY2xpZW50IGlz
IG9wZW4gc291cmNlCj4gYnV0IEkgZG9uJ3QgdGhpbmsgdGhlIHNlcnZlciBjb21wb25lbnQgaXMu
ICBUaGlzIGlzIGZyZXF1ZW50bHkgdXNlZAo+IGluIGNvcnBvcmF0ZSBlbnZpcm9ubWVudHMuICBU
aGlzIGlzIG15IGxlYXN0IGZhdm9yaXRlIG9mIHRoZW0uCj4gCj4gMykgd2lyZWd1YXJkOiB0aGlz
IGlzIGEgbmV3IGNvbnRlbmRlci4gIEl0J3Mgc21hbGxlciwgYSBsb3QgbGVzcwo+IGNvbXBsZXgs
IGFuZCBhIGxvdCBlYXNpZXIgdG8gbWFudWFsbHkgY29uZmlndXJlIGlmIGFsbCB5b3Ugd2FudCBp
cyB0bwo+IGxpbmsgdG8gbWFjaGluZXMgc2VjdXJlbHkgKGl0IGRvZXNuJ3Qgc2NhbGUgcXVpdGUg
YXMgbmljZWx5IHRvIGhhdmluZwo+IGh1bmRyZWRzIG9yIHRob3VzYW5kcyBvZiBWUE4gY2xpZW50
cykuCj4gCj4gNCkgd2hpbGUgbm90IGEgY29tcGxldGUgVlBOIHNvbHV0aW9uLCB5b3UgY2FuIGFs
c28gdHVubmVsIGNlcnRhaW4KPiBwb3J0cyBvdmVyIFNTSCB3aGljaCBjYW4gYmUgYSBmYXN0IHdh
eSB0byBzZWN1cmVseSBjb25uZWN0IHdpdGhvdXQKPiB0aGUgaGFzc2xlIG9mIHNldHRpbmcgdXAg
YSBWUE4uICBJIHVzZSB0aGlzIGZvciBjb25uZWN0aW5nIGZyb20gaG9tZQo+IHRvIGEgcGFydGlj
dWxhciBzZXJ2aWNlIGJlaGluZCB0aGUgZmlyZXdhbGwgYXQgbXkgZGF5LWpvYi4KPiAKPiBZb3Ug
ZG9uJ3QgZnVsbHkgZGV0YWlsIHdoYXQgeW91J3JlIHRyeWluZyB0byBjb25uZWN0IHRvIGEgVlBO
IGFuZCB3aHkuCj4gUmVhc29ucyBtaWdodCBpbmNsdWRlCj4gCj4gLSB5b3UgdHJ1c3QgeW91ciBW
UE4gcHJvdmlkZXIgbW9yZSB0aGFuIHlvdSB0cnVzdCB5b3VyIElTUAo+IAo+IC0geW91IHdhbnQg
dG8gbWFrZSB5b3VyIGNvbm5lY3Rpb24gYXBwZWFyIGFzIGlmIHlvdSBhcmUgaW4gYQo+ICAgZGlm
ZmVyZW50IGxvY2F0aW9uCj4gCj4gLSB5b3UgaGF2ZSBvbmUgb3IgbW9yZSBzZXJ2ZXJzICJvdXQg
dGhlcmUiIGFuZCB3YW50IHRvIGNvbm5lY3QgdGhlbQo+ICAgYXMgaWYgdGhleSdyZSBpbiBhIGxv
Y2FsIG5ldHdvcmsKPiAKPiAtIHlvdSBoYXZlIGEgcGhvbmUgb3Igb3RoZXIgbW9iaWxlIGRldmlj
ZSBhbmQgd2FudCB0byBjb25uZWN0IGl0IGJhY2sKPiAgIHRvIGEgbW9yZSB0cnVzdGVkIGVuZHBv
aW50IGV2ZW4gaWYgeW91J3JlIG9uIGZyZWUvcHVibGljIHdpZmkgb3V0Cj4gICBhbmQgYWJvdXQK
PiAKPiBVc2luZyBhIFZQTiBvbmx5IHNlY3VyZWx5IG1vdmVzIHRoZSBlbmRwb2ludCBvZiB5b3Vy
IGNvbm5lY3Rpb24gdG8KPiBhbm90aGVyIGxvY2F0aW9uLiAgTXkgcHJlZmVyZW5jZSBpcyB0byBn
ZXQgYSBzbWFsbCBWUFMgYm94IChJIGhhdmUKPiBvbmUgZm9yIG15IHdlYnNpdGUgJiBtYWlsIGFs
cmVhZHkpIGFuZCBoYXZlIGl0IGFjdCBhcyBteSBWUE4KPiBlbmQtcG9pbnQgKGVpdGhlciB1c2lu
ZyBPcGVuVlBOIG9yIFdpcmVHdWFyZCkuICBUaGlzIGxldHMgbXkgaG9tZQo+IGRldmljZXMgb3Ig
bW9iaWxlIGRldmljZXMgYXBwZWFyIHRvIGJlIGNvbWluZyBmcm9tIHRoZSBkYXRhLWNlbnRlcgo+
IGhvdXNpbmcgbXkgVlBTLCByYXRoZXIgdGhhbiBkaXNjbG9zaW5nIG15IGhvbWUgSVAuICBJIGxp
a2UgYm90aCBPVkgKPiBhbmQgVnVsdHIgZm9yIGEgbG93LWVuZCBib3ggdGhhdCBjYW4gbWVldCB0
aGVzZSBuZWVkcyBmb3IgfiQzLjUwCj4gKFVTRCkgcGVyIG1vbnRoLgo+IAo+IGh0dHBzOi8vdXMu
b3ZoLmNvbS91cy9vcmRlci92cHMvP3Y9MyMvdnBzL2J1aWxkP3NlbGVjdGlvbj1+KHJhbmdlfidT
dGFydGVyfmZsYXZvcn4ndnBzLXN0YXJ0ZXItMS0yLTIwfmRhdGFjZW50ZXJzfihCSFN+MSl+cHJp
Y2luZ01vZGV+J2RlZmF1bHQpCj4gCj4gaHR0cHM6Ly93d3cudnVsdHIuY29tL3Byb2R1Y3RzL2Ns
b3VkLWNvbXB1dGUvI3ByaWNpbmcKPiAKPiAoYmV3YXJlIHRoYXQgVnVsdHIgb2ZmZXJzIGEgY2hl
YXBlciBJUHY2LW9ubHkgc2VydmVyLCBidXQgeW91IGxpa2VseQo+IG5lZWQvd2FudCBJUHY0IHRv
bywgc28gZG9uJ3Qgc2tpbXAgdGhlcmUpICBEaWdpdGFsIE9jZWFuIGFuZCBMaW5vZGUKPiBhbHNv
IG9mZmVyIHNpbWlsYXIgc3lzdGVtcyB0aG91Z2ggdGVuZCB0byBiZSBzbGlnaHRseSBwcmljaWVy
IGF0Cj4gJDUvbW8uCj4gCj4gT24gdGhlIGZsaXAgc2lkZSwgaWYgeW91IHdhbnQgdG8gc2VjdXJl
IHlvdXIgbW9iaWxlIHdoaWxlIG91dCBhbmQKPiBhYm91dCwgeW91IGNhbiBzZXQgdXAgZWl0aGVy
IE9wZW5WUE4gb3IgV2lyZUd1YXJkIG9uIHlvdXIgaG9tZQo+IG1hY2hpbmUsIGZvcndhcmQgeW91
ciByb3V0ZXIncyBjb3JyZXNwb25kaW5nIHBvcnRzIHRvIHlvdXIgaW50ZXJhbAo+IG1hY2hpbmUs
IGFuZCB0aGVuIGhhdmUgeW91ciBtb2JpbGUgY29ubmVjdCB2aWEgT3BlblZQTi9XaXJlR3VhcmQg
YmFjawo+IHRvIHlvdXIgaG9tZSBtYWNoaW5lIHRvIGF0IGxlYXN0IGdpdmUgeW91IHRoZSBzYW1l
IHNlY3VyaXR5IHlvdSdkCj4gb3RoZXJ3aXNlIGhhdmUgYXQgaG9tZS4KPiAKPiBGdW5ueSwgYXMg
SSdtIHdyYXBwaW5nIHVwIHR5cGluZyB0aGlzLCB0aGUgbW9zdCByZWNlbnQgSGFja2VyIFB1Ymxp
Ywo+IFJhZGlvIHBvZGNhc3QgZXBpc29kZSB3YXMgYWJvdXQgc2V0dGluZyB1cCBhIGZyZWUvbG93
LWNvc3QgVlBOCj4gCj4gaHR0cDovL2hhY2tlcnB1YmxpY3JhZGlvLm9yZy9lcHMucGhwP2lkPTMx
NzcKPiAKPiBqdXN0IGluIGNhc2UgeW91IHdhbnQgdG8gZ2l2ZSB0aGF0IGEgbGlzdGVuLgo+IAo+
IEhvcGVmdWxseSB0aGlzIGdpdmVzIHlvdSBzb21lIGlkZWFzIGFuZCBoZWxwcyBjbGFyaWZ5IHdo
YXQgeW91J3JlCj4gYXNraW5nIGZvci4KPiAKPiAtdGltCj4gCj4gCj4gCj4gT24gT2N0b2JlciAg
NiwgMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGkg
ZXZlcnlvbmUsCj4+IEkgYW0gYWJvdXQgdG8gaW5zdGFsbCBTbGludCBmb3IgdGhlIGZpcnN0IHRp
bWUsIHNvIGlmIGFsbCBnb2VzCj4+IHdlbGwsIEkgc2hvdWxkIGJlIGhhdmluZyBteSBmaXJzdCBM
aW51eCBPUyB1cCBhbmQgcnVubmluZyBzb29uLgo+PiBUaGVyZSBtaWdodCBiZSB1bmV4cGVjdGVk
IGNoYWxsZW5nZXMgYXMgYSBuZXdiaWUsIGJ1dCBvdmVyYWxsLCBJCj4+IGhvcGUgaXQgZ29lcyB3
ZWxsLkknbSBsb29raW5nIGludG8gVlBOIG9wdGlvbnMgZm9yIG9uY2UgSSBnZXQgdGhlCj4+IE9T
IGluc3RhbGxlZC4gSSBrbm93IHNvbWUgVlBOIHNlcnZpY2VzIGhhdmUgZnJlZSB0cmlhbHMsIGJ1
dCBJJ2QKPj4gcmF0aGVyIGp1c3QgYXNrIHlvdSBndXlzIHdoaWNoIFZQTiBkbyB5b3UgdGhpbmsg
aGFzIGEgZmFpcmx5Cj4+IGFjY2Vzc2libGUgYXBwIG9uY2UgeW91IGRvd25sb2FkIGl0IG9uIExp
bnV4PyBUaGFua3MsIFNMCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0


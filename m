Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 051B85963AC
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 22:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660681356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SZgyVDLt0v92X+C4umAKhUWyNBBNfWF+D1RUL9faLpM=;
	b=Hn7cSLLBBk+SyFB+nQNOxc9n9LR0X3BcIPBpWCqwkZ238ekapc9s3NuDuFM8xnjYGk/PMB
	uFGsYuusdfr0Zf6R3sc2OArkWih3haFXnnasjgBXpNchdAHkUP7Ozi29X6uqp4F8LNzACR
	N3fbNcvkinl4YReLjbISY9xUlzlDAZY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-z1a4unOiMYSXW5TqJW_Vlw-1; Tue, 16 Aug 2022 16:22:33 -0400
X-MC-Unique: z1a4unOiMYSXW5TqJW_Vlw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 333501C13945;
	Tue, 16 Aug 2022 20:22:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AE1851121315;
	Tue, 16 Aug 2022 20:22:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 321E4193F6EA;
	Tue, 16 Aug 2022 20:22:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 15:22:10 -0500
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-reply-to: <202208161941.27GJf2ce015606@nfbcal.org>
To: Brian Buhrow <buhrow@nfbcal.org>, K0LNY_Glenn <glenn@ervin.email>,
 Karen Lewellen <klewellen@shellworld.net>
MIME-version: 1.0
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.59.174]
X-Spam-PmxInfo: Server=avs-4, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.201518,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.8.16.5920002,
 SenderIP=[104.47.59.174]
References: <202208161941.27GJf2ce015606@nfbcal.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Message-ID: <mailman.1256.1660681346.10501.blinux-list@redhat.com>
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
Cc: Milan Zamazal <pdm@zamazal.org>, "John G. Heim" <jheim@wisc.edu>,
 speakup@linux-speakup.org, Butch Bussen <butchb@shellworld.net>,
 Blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QnJpYW4sIHRoaXMgaXMgd2h5IHNvbWUgcGVvcGxlIGNhbGwgdGhlIE5GQiBhIGN1bHQuIE5vIG1h
dHRlciBob3cgCmNsZWFybHkgd3JvbmcgaXQgaXMsIHRoZXkgbmV2ZXIgYWRtaXQgYSBtaXN0YWtl
LgoKVGhpbmsgYWJvdXQgd2hhdCB5b3UgYXJlIHNheWluZy4gQWJvdXQgdGhlIHRpbWUgdGhpcyBj
b250cm92ZXJzeSB3YXMgYXQgCml0cyBoZWlnaHQsIEkgd2FzIHZvbHVudGVlcmluZyB0ZWFjaGlu
ZyBlbGRlcmx5LCB2aXN1YWxseSBpbXBhaXJlZCAKcGVvcGxlIHRvIHVzZSBhIGNvbXB1dGVyLiBJ
bWFnaW5lIHRoZWlyIHJlYWN0aW9uIHdoZW4gSSB0b2xkIHRoZW0gYSAKc2NyZWVuIHJlYWRlciBm
b3IgV2luZG93cyB3b3VsZCBydW4gc29tZXdoZXJlIGFyb3VuZCAkMSwwMDAuIApFc3NlbnRpYWxs
eSwgeW91J3JlIGFyZ3VpbmcgdGhhdCB0aG9zZSBlbGRlcmx5IHBlb3BsZSBzaG91bGQgcGF5IGEg
CiQxLDAwMCB0YXggaW4gYSBlZmZvcnQgdG8ga2VlcCBGcmVlZG9tIFNjaWVudGlmaWMgcHJvZml0
YWJsZS4gRG8geW91IAprbm93IHdoYXQgJDEsMDAwIG1lYW5zIHRvIGFuIGVsZGVybHksIHZpc3Vh
bGx5IGltcGFpcmVkIHBlcnNvbj8KCkFuIGVmZm9yLCBieSB0aGUgd2F5LCB3aGljaCB3YXMgZG9v
bWVkIHRvIGZhaWx1cmUgaWYgaXQgd2FzIG5lZWRlZCBhdCAKYWxsLiBGcmVlIHNjcmVlbiByZWFk
ZXJzIHdlcmUsIGFuZCBzdGlsbCBhcmUsIHRoZSB3YXZlIG9mIHRoZSBmdXR1cmUuIEEgCmZyZWUg
c2NyZWVuIHJlYWRlciBmb3IgV2luZG93cyB3YXMgY29taW5nIGFueXdheS4gTGludXgsIE1hYyBP
UywgSU9TLCAKYW5kIEFuZHJvaWQgYWxsIGhhdmUgc2NyZWVuIHJlYWRlcnMgYnVpbHQgaW50byB0
aGUgb3BlcmF0aW5nIHN5c3RlbS4gQW5kIApkb24ndCBzYXkgdGhlc2UgZGV2ZWxvcG1lbnRzIGNv
dWxkIG5vdCBiZSBhbnRpY2lwYXRlZC4gSSBhcmd1ZWQgbGlrZSBhIApidWxsZG9nIGZvciB0aGVt
LgoKUFM6IFZvaWNlT3ZlciBmb3IgTWFjT1MgaXMgYWJzb2x1dGVseSBub3QgYSBwb2ludCBpbiB5
b3VyIGZhdm9yLiBGaXJzdCAKb2YgYWxsLCBwZW9wbGUgbG92ZSBWb2ljZU92ZXIgZm9yIE1hY09T
LiBJIGRvdWJ0IGN1c3RvbWVyIHNhdGlzZmFjdGlvbiAKd2l0aCBKYXdzIHdhcyBldmVyIGdyZWF0
ZXIgdGhhbiB0aGF0IGZvciBWb2ljZU92ZXIuIEJ1dCBtb3JlIAppbXBvcnRhbnRseSwgdGhlIG1l
cmUgZXhpc3RlbmNlIG9mIFZvaWNlT3ZlciBzaG93cyB0aGUgZmxhdyBpbiB0aGUgTkZCJ3MgCmxv
Z2ljLiBUaGUgTkZCwqAgc2ltcGx5IGRpZG4ndCBoYXZlIHRoZSBhYmlsaXR5IHRvIHByb3RlY3Qg
SmF3cyBmcm9tIApjb21wZXRpdGlvbiBmcm9tIGZyZSBzY3JlZW4gcmVhZGVycy4KCgpPbiA4LzE2
LzIyIDE0OjQxLCBCcmlhbiBCdWhyb3cgd3JvdGU6Cj4gCWhlbGxvLiAgSSBnZXQgdGhhdCB0aGlz
IGlzIGEgbGlzdCBmb3IgYW4gb3BlbiBzb3VyY2UgcHJvamVjdCBhbmQgSSBhbSBhIHN0cm9uZyBh
ZHZvY2F0ZQo+IGZvciBvcGVuIHNvdXJjZSBzb2Z0d2FyZSAtLSBJIHRvbyBtYWtlIG15IGxpdmlu
ZyB1c2luZyBhbmQgd29ya2luZyBvbiBpdCBldmVyeSBkYXkuIEluIGZhY3QsCj4gSSdtIHdyaXRp
bmcgdGhpcyB1c2luZyBhbiBvcGVuIHNvdXJjZSBzY3JlZW4gcmVhZGVyLCB5YXNyLgo+Cj4gCVll
cywgd2UgZ290IG1hbnkgb2YgdGhlIGRldGFpbHMgd3JvbmcgaW4gdGVybXMgb2YgaG93IHRoaW5n
cyBoYXZlIHBsYXllZCBvdXQgb3ZlciB0aW1lLAo+IGJ1dCBJIHRoaW5rIHRoZSBvdmVyIGFsbCBj
b25jZXB0IHdhcyBtb3JlIG9yIGxlc3MgY29ycmVjdCBhbmQgSSB0aGluayB0aGUganVyeSBpcyBz
dGlsbCBvdXQgYXMKPiB0byB3aGV0aGVyIHdlIHdlcmUgY29tcGxldGVseSB3cm9uZy4gIFdpdGgg
dGhlIGV4Y2VwdGlvbiBvZiBMaW51eCBhbmQgdGhlIEJTRCdzIHdoaWNoIGFyZQo+IGNvbXBsZXRl
bHkgb3BlbiBzb3VyY2UsIHRoZSBzY3JlZW4gcmVhZGVycyBhdmFpbGFibGUgdG9kYXkgZm9yIGNv
bW1lcmNpYWwgb3BlcmF0aW5nIHN5c3RlbXMsCj4gaS5lLiBXaW5kb3dzLCBpT1MsIE1hYyBPU1gg
YW5kIEFuZHJvaWQsIGFyZSB0b3RhbGx5IGRlcGVuZGVudCBvbiB0aGUgYWNjZXNzaWJpbGl0eSBB
UElzIHRoZQo+IHZlbmRvcnMgb2YgdGhvc2Ugb3BlcmF0aW5nIHN5c3RlbXMgcHJvdmlkZS4gIElm
IHRoZSBkYXRhIGNvbWluZyBvdXQgb2YgdGhvc2UgQVBJcyBpc24ndCBnb29kIG9yCj4gaWYgdGhl
IEFQSXMgYXJlbid0IHBlcmZvcm1hbnQsIHRoZW4gdGhlIHNjcmVlbiByZWFkZXIgZXhwZXJpZW5j
ZSB3aWwgYmUgdGVycmlibGUgcmVnYXJkbGVzcyBvZgo+IHdoaWNoIG9uZSBpcyBpbiB1c2UuICBB
cyBJIHdyb3RlIGVhcmxpZXIsIEFwcGxlIGhhcyBhbHJlYWR5IHNodXQgdGhlIGRvb3Igb24gdGhp
cmQgcGFydHkgc2NyZWVuCj4gcmVhZGVyICBkZXZlbG9wbWVudCAtLSBpdCdzIFZvaWNlT3ZlciBv
ciB0aGUgaGlnaHdheS4KPgo+IAlNaWNyb3NvZnQgaGFzIG1hZGUgdGhlIGFyZ3VtZW50IHRoYXQg
YnkgYnVpbGRpbmcgTmFycmF0b3IsIHRoZXkgY2FuIGxlYXJuIGhvdyBiYWQgdGhlaXIKPiBBUElz
IGFyZSBhbmQgaW1wcm92ZSB0aGVtIGZvciB0aGVpciBvd24gdXNlLCBhcyB3ZWxsIGFzIHRoZSB1
c2Ugb2YgdGhlIHRoaXJkIHBhcnR5IHNjcmVlbgo+IHJlYWRlcnMuICBUaGlzIGlzIGEgcmVhc29u
YWJsZSBhcmd1bWVudCwgYXMgbG9uZyBhcyB0aGV5J3JlIHdpbGxpbmcgdG8gY29udGludWUgc2hh
cmluZyB0aG9zZQo+IEFQSXMgd2l0aCB0aGlyZCBwYXJ0eSBzY3JlZW4gcmVhZGVyIGRldmVsb3Bl
cnMuICBCdXQsIGlmIHRoZXkgZGVjaWRlIHRoZXkgd2FudCB0byBnbyBkb3duIHRoZQo+IHJvYWQg
b2YgQXBwbGUgYXQgc29tZSBwb2ludCwgdGhpcmQgcGFydHkgc2NyZWVuIHJlYWRlciBkZXZlbG9w
ZXJzLCBhbmQgdGhlaXIgdXNlcnMsIGFyZSBvdXQgaW4KPiB0aGUgY29sZC4gIFRoYXQgaXMgbW9y
ZSB0cnVlIHRvZGF5IHRoYW4gaXQgd2FzLCBzYXksIDEwIG9yIDE1IHllYXJzIGFnby4KPgo+IAlU
aGUgaXJvbnkgaXMsIGFuZCBJJ20gc3VyZSBtYW55IG9mIHRoZSBmb2xrcyBvbiB0aGlzIGxpc3Qg
d2lsIGRpc2FncmVlIHdpdGggdGhpcwo+IHN0YXRlbWVudCwgdGhhdCBpbiBzb21lIHdheSwgdGhl
IGFyZ3VtZW50IHdlIG1hZGUgYWJvdXQgdGhlc2UgY29uY2VybnMgdG8gTWljcm9zb2Z0IGhlbHBl
ZCBzcHVyCj4gdGhlIGRldmVsb3BtZW50IG9mIE5WREEsIGEgcHJvamVjdCBJIHRob3JvdWdobHkg
ZW5kb3JzZS4gIE1pY3Jvc29mdCBoYXMgYmVlbiBhIHZlcnkgbGFyZ2UKPiBjb250cmlidXRvciB0
byB0aGUgTlZEQSBlZmZvcnQsIHNvbWV0aGluZyB0aGV5IGRpZCwgaW4gcGFydCwgdG8gYWxsYXkg
b3VyIGNvbmNlcm5zLCBhbmQgdG8gc2hvdwo+IHRoZXkgc3VwcG9ydCBvcGVuIHNvdXJjZSBzb2Z0
d2FyZS4KPgo+IAlBcyB0byBteSBjb21tZW50IGFib3V0IHRoZSBqdXJ5IHN0aWxsIGJlaW5nIG91
dCBvbiB0aGUgaXNzdWUsIE1pY3Jvc29mdCBjb250aW51ZXMgdG8gcHVzaAo+IE5hcnJhdG9yIGZv
cndhcmQuICBBbmQsIGJhc2VkIG9uIGRpc2N1c3Npb25zIHdlJ3ZlIGhhZCB3aXRoIHRoZW0gcmVj
ZW50bHksIHRoZXkgYXJlIGRpc2NvdmVyaW5nCj4ganVzdCBob3cgY2hhbGxlbmdpbmcgaXQgY2Fu
IGJlIHRvIG1ha2UgYSBzY3JlZW4gcmVhZGVyIHdvcmsgd2VsbC4gIEl0IGlzIG15IHBlcmNlcHRp
b24gdGhhdAo+IHRoZXkgYXJlIHN0aWxsIHRveWluZyB3aXRoIHRoZSBpZGVhIG9mIGdvaW5nIGRv
d24gdGhlIEFwcGxlIHJvYWQgaW4gc29tZSBvZiB0aGVpciBpbnRlcm5hbAo+IGRpc2N1c3Npb25z
LCBidXQgdGhhdCB0aGV5IGFyZSBjb21pbmcgdG8gdGhlIHJlYWxpemF0aW9uIGFib3V0IGhvdyBi
YWQgb2YgYW4gaWRlYSB0aGlzIHJlYWxseQo+IGlzLiAgSXQgaXMgdGhhdCByZWFsaXphdGlvbiB0
aGF0IGdpdmVzIG1lIGhvcGUgdGhhdCB3ZSB3aWxsIGNvbnRpbnVlIHRvIGhhdmUgY2hvaWNlcyB3
aGVuIGl0Cj4gY29tZXMgdG8gYWNjZXNzIHNvZnR3YXJlIG9uIFdpbmRvd3MgZ29pbmcgZm9yd2Fy
ZCBhbmQgdGhhdCB0aGUgTGludXggY29tcGFuaWVzLCBpLmUuCj4gQ2Fubm9uaWNhbCwgUmVkIEhh
dCBhbmQgdGhlIG90aGVycywgd2lsbCBkZWNpZGUgdGhlIGJlc3Qgd2F5IHRvIGxldmVyYWdlIGFj
Y2Vzc2liaWxpdHkgaXMgdG8KPiBjb250aW51ZSB0byBpbXByb3ZlIHRoZSBhY2Nlc3Mgc29mdHdh
cmUgIHRoYXQncyBhbHJlYWR5IG91dCB0aGVyZS4KPgo+IC1CcmlhbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=


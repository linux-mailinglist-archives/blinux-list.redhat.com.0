Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2B2E31F89F2
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 19:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592157183;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Io1GZ8pmbSpSnU+HhHhSuMQMezm9or+yzA8Pu8uvzgo=;
	b=JXVlbNFRi4lQphsKHzMF0jxzjakdgjheAKHoXhsK4w+CUD2KND7VXL/0Sa4KGoF1Z2NXBk
	VBiWSPaleJbHSlMyTpeet7YBWRxMVv5awuPFXE1DX16z9MbQ+O7BjwEj/653PJCOrwghkz
	Y4pgor1eibd8I4CsrwPkxb8RxIYhi04=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-0nGV66SzMmiMMuuoz-ip6A-1; Sun, 14 Jun 2020 13:52:35 -0400
X-MC-Unique: 0nGV66SzMmiMMuuoz-ip6A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D3AAA0C01;
	Sun, 14 Jun 2020 17:52:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C80E7100164C;
	Sun, 14 Jun 2020 17:52:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 43D3014CC3;
	Sun, 14 Jun 2020 17:52:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EHqFCo018306 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 13:52:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 883962026E04; Sun, 14 Jun 2020 17:52:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83DB1202683E
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 17:52:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6EF6101A525
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 17:52:11 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-347-CptCwKNsMdKED7eu0qXSuA-1; Sun, 14 Jun 2020 13:52:08 -0400
X-MC-Unique: CptCwKNsMdKED7eu0qXSuA-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05EHZ8Ml048462
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 17:35:08 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05EHZ8Ml048462
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05EHZ8Ml048462
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05EHZ89U048458
	for blinux-list@redhat.com; Sun, 14 Jun 2020 13:35:08 -0400
Date: Sun, 14 Jun 2020 13:35:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200614173508.GA2180@rednote.net>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
MIME-Version: 1.0
In-Reply-To: <498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
X-Operating-System: Linux opera.rednote.net 5.6.16-200.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by opera.rednote.net id
	05EHZ8Ml048462
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EHqFCo018306
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Content-Disposition: inline

SSBiZWxpZXZlIHRoZSByZWFzb24gdGhlcmUncyBubyBPcmNhIG9uIExpbnV4IGlzIGJlY2F1c2Ug
dGhlIFVJIGxheWVyIG9uCkFuZHJvaWQgaXMgYmFzZWQgb24gSmF2YSwgd2hlcmVhcyBPcmNhIGlz
IGEgR05PTUUvR1RLIGFwcGxpY2F0aW9uLgoKU28sIHllcywgdGhleSBib3RoIGhhdmUgTGludXgg
dW5kZXIgdGhlIGhvb2Q7IGJ1dCB0aGF0J3MgYWJvdXQgdGhlCmV4dGVudCBvZiB0aGUgc2ltaWxh
cml0eS4KClBTOiBBbHNvIGxhY2tpbmcgb24gQW5kcm9pZCBpcyBzY3JlZW4gcmVhZGVyIGFjY2Vz
cyB0byBhbnl0aGluZyB0ZXJtaW5hbApiYXNlZC4gVGFsa2JhY2ssIGJlaW5nIEphdmEgYmFzZWQg
YW5kIG9iamVjdCBvcmllbnRlZCwgaXNuJ3QgbGlrZWx5IGV2ZXIKdG8gc3VwcG9ydCB0ZXJtaW5h
bCBhcHBsaWNhdGlvbnMgb24gQW5kcm9pZC4gWWV0LCBxdWl0ZSBhIGZldyB1c2Vycwp3b3VsZCBs
b3ZlIHRvIGJyaW5nIHVwIGEgYmFzaCBwcm9tcHQgb24gdGhlaXIgQW5kcm9pZCBkZXZpY2VzLApl
c3BlY2lhbGx5IHRvIHNzaCBvdXQgdG8gYW4gZXh0ZXJuYWwgTGludXguCgpTcFtlYWt1cCBpcyB1
bmxpa2VseSB0byB3b3JrIHdlbGwgZm9yIHRoYXQsIGFzIEdvb2dsZSdzIExpbnV4IGtlcm5lbApz
ZWVtcyBwcmV0dHkgc3BlY2lmaWMgdG8gd2hhdCB0aGV5IGNvbnNpZGVyIGltcG9ydGFudCwgdmlz
IGEgdmlzCnN1cHBvcnRpbmcgYWxsIExpbnV4IGtlcm5lbCBtb2R1bGVzLiBQZXJoYXBzIHdoZW4g
U3BlYWt1cCBmaW5hbGx5IGV4aXN0cwpTdGFnaW5nIGFuZCBiZWNvbWVzIHBhcnQgb2YgdGhlIExp
bnV4IGtlcm5lbCwgdGhpcyBtYXkgYmUgYW4gb3B0aW9uLgoKRmFyIG1vcmUgcHJhY3RpY2FsLCBp
bW8sIGlzIEZlbnJpci4gSSBoYXZlIHNvbWV0aW1lcyB0aG91Z2h0IG9mIHB1dHRpbmcKdG9nZXRo
ZXIgYW4gQW5kcm9pZCBidWlsZCBlbnZpcm9ubWVudCB0byBzZWUgd2hldGhlciBJIGNvdWxkIGdl
dCBGZW5yaXIKdG8gcnVuIG9uIEFuZHJvaWQtLWJ1dCBJJ2QgYmUgcGVyZmVjdGx5IGhhcHB5IHNo
b3VsZCBzb21lb25lIGVsc2UgZ2V0CnRoZXJlIGZpcnN0ISA8c21pbGU+CgpCZXN0LAoKSmFuaW5h
CgpMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyaXRlczoKPiBJJ3ZlIGJlZW4g
ZG9pbmcgc29tZSB3ZWIgY3Jhd2xpbmcsIHRyeWluZyB0byBnZXQgYW4gaWRlYSBvZiB0aGUgcHJv
c3BlY3RzCj4gZm9yIGEgYmxpbmQtYWNjZXNzaWJsZSwgKG1vc3RseSkgb3BlbiBzb3VyY2UgT1Mg
Zm9yIEFuZHJvaWQgSFcgZGV2aWNlcy4KPiAKPiBUaGUgcmVzdCBvZiB0aGlzIG1lc3NhZ2UgaXMg
YSBtaXNobWFzaCBvZiBsaW5rcyBhbmQgbm90ZXM7IGlmIGFueW9uZSBjYW4KPiBwcm92aWRlIGFk
ZGl0aW9ucyBhbmQgY29ycmVjdGlvbnMsIEknZCBiZSBtb3N0IGdyYXRlZnVsLi4uCj4gCj4gLXIK
PiAKPiAjIEF2YWlsYWJpbGl0eQo+IAo+IFRoZSBBbmRyb2lkIGFwcGxpY2F0aW9uIHBhY2thZ2Ug
KEFQSykgaXMgdGhlIEdvbGRlbiBQYXRoIGZvciBkaXN0cmlidXRpb24sCj4gYnV0IHNvbWUgR29v
Z2xlIFBsYXkgYXBwcyBhcmVuJ3QgYXZhaWxhYmxlIHRvICJyb290ZWQiIEFuZHJvaWQgcGhvbmVz
Ogo+IAo+IFNhZmV0eU5ldCBFeHBsYWluZWQ6IFdoeSBBbmRyb2lkIFBheSBhbmQgT3RoZXIgQXBw
cyBEb27igJl0IFdvcmsgb24gUm9vdGVkIERldmljZXMKPiAgIGh0dHBzOi8vd3d3Lmhvd3RvZ2Vl
ay5jb20vMjQxMDEyCj4gCj4gSXQgd291bGQgYmUgbmljZSB0byBoYXZlIGEgTGludXgtZnJpZW5k
bHkgdG9vbCAoZS5nLiwgQVBUKSBhcyBhbiBhbHRlcm5hdGl2ZS4KPiBNZWFud2hpbGUsIHNvbWUg
cGFja2FnZXMgYXJlIGF2YWlsYWJsZSB2aWEgbWljcm9HIChodHRwczovL21pY3JvZy5vcmcpLgo+
IAo+ICMgQWNjZXNzaWJpbGl0eQo+IAo+ICMjIEFuZHJvaWQKPiAKPiBUaGUgR29sZGVuIFBhdGgg
Zm9yIGExMXkgc2VlbXMgdG8gYmUgdGhlIEFuZHJvaWQgQWNjZXNzaWJpbGl0eSBTdWl0ZSwgYXZh
aWxhYmxlCj4gb24gdGhlIEdvb2dsZSBQbGF5IFN0b3JlOgo+IAo+ICAgaHR0cHM6Ly9wbGF5Lmdv
b2dsZS5jb20vc3RvcmUvYXBwcy9kZXRhaWxzP2lkPWNvbS5nb29nbGUuYW5kcm9pZC5tYXJ2aW4u
dGFsa2JhY2sKPiAKPiBNb3JlIGdlbmVyYWwgaW5mb3JtYXRpb24gaXMgYXZhaWxhYmxlIG9uIHRo
ZSBBbmRyb2lkIGFjY2Vzc2liaWxpdHkgb3ZlcnZpZXcgcGFnZToKPiAKPiAgIGh0dHBzOi8vc3Vw
cG9ydC5nb29nbGUuY29tL2FjY2Vzc2liaWxpdHkvYW5kcm9pZC9hbnN3ZXIvNjAwNjU2ND9obD1l
bgo+IAo+ICMjIENlbGlhCj4gCj4gVGhpcyBzZWVtcyBpbnRlcmVzdGluZywgZXZlbiB0aG91Z2gg
aXQgKGN1cnJlbnRseSkgb25seSBzdXBwb3J0cyBDaGluZXNlLgo+IEhvd2V2ZXIsIGl0IChhbmQg
RU1VSSkgYXJlIHByb3ByaWV0YXJ5Lgo+IAo+ID4gQ2VsaWEgaXMgYW4gYXJ0aWZpY2lhbGx5IGlu
dGVsbGlnZW50IHZpcnR1YWwgYXNzaXN0YW50IGRldmVsb3BlZCBieSBIdWF3ZWkKPiBmb3IgaXRz
IGxhdGVzdCBBbmRyb2lkLWJhc2VkIEVNVUkgc21hcnRwaG9uZXMgdGhhdCBsYWNrIEdvb2dsZSBT
ZXJ2aWNlcwo+IGFuZCBhIEdvb2dsZSBBc3Npc3RhbnQuCj4gCj4gLS0gaHR0cHM6Ly9lbi53aWtp
cGVkaWEub3JnL3dpa2kvQ2VsaWFfKFZpcnR1YWxfYXNzaXN0YW50KQo+IAo+ICMjIFNjcmVlbiBS
ZWFkZXJzLCBldGMuCj4gCj4gVGFsa0JhY2sgYW5kIEJyYWlsbGVCYWNrIChib3RoIGZvdW5kIGlu
IHRoZSBBbmRyb2lkIEFjY2Vzc2liaWxpdHkgU3VpdGUpCj4gc2VlbSB0byBiZSB0aGUgR29sZGVu
IFBhdGggZm9yIGJsaW5kLWZyaWVuZGx5IEFuZHJvaWQgc3VwcG9ydC4KPiAKPiBEZXNwaXRlIHRo
aXMgdGl0bGUsIHRoZXJlIGRvZXNuJ3QgYXBwZWFyIHRvIGJlIGFueSBBUEsgdmVyc2lvbiBvZiBP
cmNhOgo+IAo+ICAgT3JjYSBEb3dubG9hZCBmb3IgTGludXggKGFwaywgZGViLCBlb3BrZywgcnBt
LCB0Z3osIHR4eiwgeHosIHpzdCkKPiAgIGh0dHBzOi8vcGtncy5vcmcvZG93bmxvYWQvb3JjYQo+
IAo+IE1vcmUgZ2VuZXJhbGx5LCBJIGNhbid0IGZpbmQgYW55IG9wZW4gc291cmNlIHNjcmVlbiBy
ZWFkZXJzIGxpc3RlZCBmb3IgQVBLOgo+IAo+ICAgU2VhcmNoIFJlc3VsdHMgZm9yICJzY3JlZW4g
cmVhZGVyIgo+ICAgaHR0cHM6Ly9wa2dzLm9yZy9zZWFyY2gvP3E9JTIyc2NyZWVuJTIwcmVhZGVy
JTIyCj4gCj4gIyBPUyBGYW1pbHkgVHJlZQo+IAo+IFRMO0RSOiBUaGVyZSBhcmUgbG90cyBvZiAo
YWxsIG9yIG1vc3RseSkgZnJlZSBPUyB2YXJpYW50cywgYnV0IHRoZWlyIGExMXkKPiBzdXBwb3J0
IGlzIGV4dHJlbWVseSBsaW1pdGVkLiAgQWxzbywgbWFueSBvZiB0aGVtIGFyZSBvbmx5IGludGVu
ZGVkIHRvIGJlCj4gdXNlZCBvbiBhIHNpbmdsZSB2ZW5kb3IncyBkZXZpY2VzLgo+IAo+IEFueXdh
eSwgaGVyZSBpcyBhbiBPUyBmYW1pbHkgdHJlZSBvZiBzb3J0cywgd2l0aCBpbmZvcm1hdGlvbmFs
IGxpbmtzLgo+IEl0J3MgYmFzZWQgb24gV2lraXBlZGlhJ3MgIkxpc3Qgb2YgY3VzdG9tIEFuZHJv
aWQgZGlzdHJpYnV0aW9ucyIKPiAoaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTGlzdF9v
Zl9jdXN0b21fQW5kcm9pZF9kaXN0cmlidXRpb25zKSwKPiBzdXBwbGVtZW50ZWQgd2l0aCBpbmZv
cm1hdGlvbiBnbGVhbmVkIGZyb20gYXNzb3J0ZWQgd2ViIHNpdGVzIChZTU1WKS4KPiAKPiBMaW51
eCAgICAgICAgICAgICAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0xpbnV4
X2tlcm5lbAo+IC0gQU9TUCAgICAgICAgICAgICAgICAgIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEu
b3JnL3dpa2kvQW5kcm9pZF8ob3BlcmF0aW5nX3N5c3RlbSkjQU9TUAo+IC0gLSBDb25xdWVyT1Mg
ICAgICAgICAgIC0gaHR0cHM6Ly9naXRodWIuY29tL0NvbnF1ZXJPUy9tYW5pZmVzdAo+IC0gLSBD
b3BwZXJoZWFkT1MgICAgICAgIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvQ29wcGVy
aGVhZE9TCj4gLSAtIEN5YW5vZ2VuTW9kICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5v
cmcvd2lraS9DeWFub2dlbk1vZAo+IC0gLSAtIExpbmVhZ2VPUyAgICAgICAgIC0gaHR0cHM6Ly9l
bi53aWtpcGVkaWEub3JnL3dpa2kvTGluZWFnZU9TCj4gLSAtIC0gLSBDckRyb2lkICAgICAgICAg
LSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9DckRyb2lkCj4gLSAtIC0gLSBQcm9qZWN0
IFNha3VyYSAgLSBodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wcm9qZWN0cy9wcm9qZWN0c2FrdXJh
L2ZpbGVzL01pZG8KPiAtIC0gLSAtIFJlcGxpY2FudCAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBl
ZGlhLm9yZy93aWtpL1JlcGxpY2FudF8ob3BlcmF0aW5nX3N5c3RlbSkKPiAtIC0gLSAtIC0gL2Uv
ICAgICAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpLy9lL18ob3BlcmF0aW5n
X3N5c3RlbSkKPiAtIC0gRGVycEZlc3QgICAgICAgICAgICAtIGh0dHBzOi8vZGVycGZlc3Qub3Jn
Cj4gLSAtIEVtdGVyaWEuT1MgICAgICAgICAgLSBodHRwczovL2VtdGVyaWEuY29tCj4gLSAtIEVN
VUkgICAgICAgICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9FTVVJCj4g
LSAtIEV2b2x1dGlvblggICAgICAgICAgLSBodHRwczovL2V2b2x1dGlvbi14Lm9yZy8jCj4gLSAt
IEZseW1lICAgICAgICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9NZWl6
dSNGbHltZQo+IC0gLSBHcmFwaGVuZU9TICAgICAgICAgIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEu
b3JnL3dpa2kvR3JhcGhlbmVPUwo+IC0gLSBHU0kgICAgICAgICAgICAgICAgIC0gaHR0cHM6Ly9z
b3VyY2UuYW5kcm9pZC5jb20vc2V0dXAvYnVpbGQvZ3NpCj4gLSAtIEhhdm9jLU9TICAgICAgICAg
ICAgLSBodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wcm9qZWN0cy9oYXZvYy1vcwo+IC0gLSBJb24g
T1MgICAgICAgICAgICAgIC0gaHR0cHM6Ly9zb3VyY2Vmb3JnZS5uZXQvcHJvamVjdHMvaS1vLW4K
PiAtIC0gTW9LZWUgICAgICAgICAgICAgICAtIGh0dHBzOi8vZG93bmxvYWQubW9rZWVkZXYuY29t
Cj4gLSAtIE1JVUkgICAgICAgICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lr
aS9NSVVJCj4gLSAtIE1TTS1YdGVuZGVkICAgICAgICAgLSBodHRwczovL3NvdXJjZWZvcmdlLm5l
dC9wcm9qZWN0cy94dGVuZGVkICAKPiAtIC0gT21uaVJPTSAgICAgICAgICAgICAtIGh0dHBzOi8v
ZW4ud2lraXBlZGlhLm9yZy93aWtpL09tbmlST00KPiAtIC0gT3h5Z2VuT1MgICAgICAgICAgICAt
IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL094eWdlbk9TCj4gLSAtIFBhcmFub2lkIEFu
ZHJvaWQgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9QYXJhbm9pZF9BbmRyb2lk
Xyhzb2Z0d2FyZSkKPiAtIC0gUGl4ZWwgRXhwZXJpZW5jZSAgICAtIGh0dHBzOi8vZW4ud2lraXBl
ZGlhLm9yZy93aWtpL1BpeGVsX0V4cGVyaWVuY2UKPiAtIC0gUmVhbG1lICAgICAgICAgICAgICAt
IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1JlYWxtZQo+IC0gLSBTbWFydGlzYW4gT1Mg
ICAgICAgIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvU21hcnRpc2FuX09TCj4gLSAt
IFZpcGVyT1MgICAgICAgICAgICAgLSBodHRwczovL2Rvd25sb2FkLnZpcGVyb3Mub3JnLyMKPiAK
PiAjIFN0YXJ0aW5nIFBvaW50cwo+IAo+IE15IHN1c3BpY2lvbiBpcyB0aGF0IHRoZSBMaW5lYWdl
T1MsIFJlcGxpY2FudCwgYW5kIC9lLyBmbGF2b3JzIGFyZSB0aGUKPiBtb3N0IHByb21pc2luZyBz
dGFydGluZyBwb2ludHMsIGJ1dCBJIGNvdWxkIGNlcnRhaW5seSBiZSB3cm9uZy4gIElmIHlvdQo+
IGtub3cgb2Ygc29tZXRoaW5nIHlvdSB0aGluayBpcyBiZXR0ZXIsIHBsZWFzZSBsZXQgbWUga25v
dyEKPiAKPiBTcGVha2luZyBvZiB3aGljaCwgdGhlIGRlZmluaXRpb24gb2YgImJldHRlciIgaXMg
dmVyeSBjb250ZXh0LWRlcGVuZGVudC4KPiBJZiBhdm9pZGluZyBhbnkgYW5kIGFsbCBwcm9wcmll
dGFyeSBzb2Z0d2FyZSBpcyB5b3VyIGdvYWwsIFJlcGxpY2FudCBtYXkKPiBiZSB0aGUgYmVzdCBj
aG9pY2UuICBJZiB5b3Ugd2FudCBpbnN0YW50IGdyYXRpZmljYXRpb24sIHlvdSBtaWdodCB3YW50
Cj4gdG8gcHVyY2hhc2UgYSBwaG9uZSB0aGF0IGFscmVhZHkgaGFzIC9lLyBpbnN0YWxsZWQuLi4K
PiAKPiBBbHNvLCBpZiB5b3UncmUgb25seSB1c2luZyBXaS1GaSBmb3IgY29ubmVjdGl2aXR5LCB5
b3UgY2FuIGlnbm9yZSBzb21lCj4gY2VsbCBwaG9uZSBpc3N1ZXMgKGUuZy4sIENETUEsIEZETUEs
IGFuZCBURE1BIHNpZ25hbCBlbmNvZGluZykuCj4gCj4gIyMgUmVwbGljYW50Cj4gCj4gLSBodHRw
czovL3JlcGxpY2FudC51cy8KPiAtIGh0dHBzOi8vcmVwbGljYW50LnVzL2Fib3V0LnBocCNmYXEK
PiAtIGh0dHBzOi8vcmVwbGljYW50LnVzL2ZyZWVkb20tcHJpdmFjeS1zZWN1cml0eS1pc3N1ZXMu
cGhwCj4gLSBodHRwczovL3JlcGxpY2FudC51cy9zdXBwb3J0ZWQtZGV2aWNlcy5waHAKPiAKPiAt
IGh0dHBzOi8vcmVkbWluZS5yZXBsaWNhbnQudXMvcHJvamVjdHMvcmVwbGljYW50L3dpa2kvRGV2
aWNlU3RhdHVzCj4gCj4gIyMgTGluZWFnZU9TCj4gCj4gLSBodHRwczovL2xpbmVhZ2Vvcy5vcmcK
PiAtIGh0dHBzOi8vbGluZWFnZW9zLm9yZy9ibG9nCj4gLSBodHRwczovL3dpa2kubGluZWFnZW9z
Lm9yZwo+IC0gaHR0cHM6Ly93aWtpLmxpbmVhZ2Vvcy5vcmcvZmFxLmh0bWwKPiAKPiAjIyAvZS8K
PiAKPiAtIGh0dHBzOi8vZG9jLmUuZm91bmRhdGlvbi9kZXZpY2VzLwo+IC0gaHR0cHM6Ly9kb2Mu
ZS5mb3VuZGF0aW9uL3doYXQtcy1lCj4gCj4gLSBodHRwczovL2UuZm91bmRhdGlvbgo+IC0gaHR0
cHM6Ly9lLmZvdW5kYXRpb24vYWJvdXQtZQo+IC0gaHR0cHM6Ly9lLmZvdW5kYXRpb24vYWJvdXQt
ZS8jd2h5LS9lLwo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKLS0gCgpKYW5pbmEgU2Fqa2EKCkxpbnV4IEZvdW5kYXRpb24gRmVsbG93CkV4ZWN1dGl2
ZSBDaGFpciwgQWNjZXNzaWJpbGl0eSBXb3JrZ3JvdXA6CWh0dHA6Ly9hMTF5Lm9yZwoKVGhlIFdv
cmxkIFdpZGUgV2ViIENvbnNvcnRpdW0gKFczQyksIFdlYiBBY2Nlc3NpYmlsaXR5IEluaXRpYXRp
dmUgKFdBSSkKQ2hhaXIsIEFjY2Vzc2libGUgUGxhdGZvcm0gQXJjaGl0ZWN0dXJlcwlodHRwOi8v
d3d3LnczLm9yZy93YWkvYXBhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0


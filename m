Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4294A31D5
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 21:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643488154;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QEso2wMwMV4qIU6l9Eu3Y4bstTbag5jmF5qpxjNUahY=;
	b=GIwhUHBbaVDkFPM6dmzIX+uGqT+OuGJyjIkZzpZhVsGdGQ38rF4Te00ZBaa7PoAu1BkVr0
	YDHK+7gKomLhUfPYgyxp0tkRH6lfvbr4CTYZIVinRJbiLzkoF50UTN61vQwZdSQjFHm9L1
	zQsKucy1ndSj2RVwULRISFR1g6TozEA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-HlZoqOUMPIGx6DZtiku8gA-1; Sat, 29 Jan 2022 15:29:10 -0500
X-MC-Unique: HlZoqOUMPIGx6DZtiku8gA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 278AE1006AA3;
	Sat, 29 Jan 2022 20:29:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 097E01037F36;
	Sat, 29 Jan 2022 20:29:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E2104BB7C;
	Sat, 29 Jan 2022 20:29:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TKSxjC006315 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 15:28:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 15B6A2026D65; Sat, 29 Jan 2022 20:28:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10C032026D4D
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:28:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B55E28FBBC1
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:28:56 +0000 (UTC)
Received: from sonic302-3.consmr.mail.bf2.yahoo.com
	(sonic302-3.consmr.mail.bf2.yahoo.com [74.6.135.42]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-91-vPQYWrhjNa28OA81JyNyVw-1; Sat, 29 Jan 2022 15:28:54 -0500
X-MC-Unique: vPQYWrhjNa28OA81JyNyVw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1643488133; bh=uFuc0jqzqWx3NF+A+nnH9idyLh1xC5RFO0Q59ju0CwF=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=H963h0BWTuD2BGXCri4rtkGtnKx1W1aTlqb9cwUNwCu6qNScs4o47Y5gngCgdkMa1rBSocxDUIGN+ILuGyYwuW+zA1zBGJpYgRwtteMjvKvklOOLTN82aWjQ1VopO5WYKeUsccK2elR9nzXKVIPtQ5vuYVoLw9PWYL03y1p6UOH578NkdTR7KEnQeOZXhttswOJF98Z2ltL1dd739CY3FdIzymcge51HVPmjAOtuo6m6qooApJ2ofDJP9/bsG3KWsO1f7obMXDO6YlJqSMLE7eYBKCrueOGHAC+z6VnIAU8jfuwzeaUU4iAPxY6owxiFemnVmu8WqKGtI4WJfBlocw==
X-YMail-OSG: JCkI.fsVM1lMmrCHwtqGpSK7L8HY4VOq8nU.Mca6WeQdc7xqSLIM9uQgF46KOdy
	dkQLR2lC29DMF8GwiljvnHdltzEMKruXyg_9gsNnLDfV76oNtZvVb9aklGStKY6qJq4uWBu15tsW
	dc_5LX070iJjZYHtz0BrLr7w15jv2jNnDx.r1CJjEZ29bVJ8yDYLEBNkeRCnmwkgNTH3T.bKgmHs
	QfBn3qzUtRN1LAWqsJ4JtoEVKvIzbdBVEyRqX.wdkxlEvz7o9nEZxdY7fZX04vmsaBTi6lz0lrrc
	fxYEUEksObNnwVuzGi2CIJP0kMxSYkO8_oDTMCk5PSqlDfVBr8kfx14lXIGEss0RIkFLABJk2jin
	EpdKXQn9rl1o6sVR2u38Ox8Ifarp29YSJa4JTlvcrvwTzT1wRLUddqbGvMoxr_f6H4TiTPuA_t6f
	ETsDYkA.u.6TdMRiDNNXZASExded7zvZ1Ie4SWxdu_ZduEkhz3NV9gLuP7wgycxmRkGE.0_qO1OR
	APoJ696SU5eN93cdgg5_r91ae1S66DwP94vS4C81hVtKsf_aMsZ_Tkgt4vdotg_svAzf3uGitb_p
	HC3_3EpI8TjGzfJVqlOkS.9Yb.TABdNru0hh55karsLkaB0wHl6JREosPbi2jjZ7_iD0dXTcEw_G
	kPnr.K_t9tYSC2KUhG9P2_SyLlvzfNGeJefjOtrzvNu21pgQr73.tSIlLb9BVyaUhE3aRcWbXDCg
	jUDpprNqY7UlsSUb4blccgFd2vunnnhK0qzYKZdeZVz16OazBtUJ8Z8.Wm9cYyHwnntt1bVdngXf
	3fczXVRWAhfG5WNLqi_96gOn_0JriGsglYbQaj7isGKy4gULCepvUSVDzSKEpjGgLSJr8zQv77xi
	lQmtwV86f16DG0OSwP7B9UpUDj9ijlplrTYPkax80BpEKHLCO9UG75_w_m0vDmHuu.Y7PqgBZH26
	g.aIej.R.9E5gF3UdmPPxNYTef4zjDQQ.l2Qw2QcMXfb.tzwyegkAgglIQ2c7.nR4Vlowu.BljyJ
	sE6r8KpBQiNj12gUtwQ8NOP1FlqyvammoCDb8EHGF.Xv_2EeSJ1HdtmB1DyPpdZJUROtbdASOaPi
	S1_3Uac5fS0cYKX3dhBpkpr.9wOm5llkPnHqPe6U6GxW.x1ua6qmJU.aZ3TX_88uIlN8e_qDMwss
	FKk2SA38PiLxtNWQ9YrEgKf8azhCnSQjcJG7.TQI0LzKljDHdu4glnn4.N1RBlWSdHNavzt_6BAw
	SdHlUtiImOZvJ7YhBwa5iGYIXH_in99OmI6uISczx6T3Jhik6Yp26VcVOVDn8dzFH2b1.dKjO7yt
	y2W5DbWGOMNXzN2uXug2nXfO_Z3zlkO8Dwj28CO.ocQ1ucV8wV7oliu6aoo1BCiLuYq0yaRjXRJJ
	Dr1DM7XXayoXs.FnK7F7neGnWLYo8KTkcuPdU1md90CRooexBpm9tF8BDsFS9HX1NpVec0AQecKF
	ew37v8L85BXAs_SQg9gFDYsoqPh5ajrjtGkrSfZgxQzHfvqX611xRRuMHg.1uQe0SayeCPXOBV4s
	oggq.DfIV7d_fl4_4L7xSZtcThCZZKMqzOYJvxBYUkbhlWcq4jHDFJfrlMkYTAFCOhmbDBLL.Qos
	1xk4PZzL6Af9NIZa5FtQqiw_Z6dZtMpvKD5mtd5KX7btXBBvrhIhT5BKKVdCIWSWK5iH2lv42PAi
	qr8aoL.9dv.mFkf2qDdTJZ7dRpKtgLKDwUF7_qQIUqqMYRFGROpk79M3qTl9Kimue6Bvwn6HgaQl
	xe3otQHROQ5FRXJ1UA20S9SMdxhJw.7ex.KSH7Ixz8JD0K7ZZIqPwzEunYFqiTjEnWej3zd0Jnp7
	9mGQJEJmypcwbBAhlnON9l5lMthquqIDgu9O4MAubARku_ACTGEuAfByvnLqI6LEFu1CihXpT_i6
	i5A2VhUiy8GiAGG5NshunN.Jb29_H7.UfWZgxkjtpNyDMW2gQiEwXtx5I82mKV2D7JxlNU8waqE8
	7rJYx0lSWhiG3HBhL31AUb.Ld9eaXzABIveSC7qi_0EGEgOgT4N3poUAxxbPppD5tKE9g_hlol3R
	gGSx3LkSwMd.wEBWankjW58USlXDP9KGUcjeUkI1CfHKpmIXKRR1KEHOxgqWaxPozJv_ZZqS_Dkp
	8TVAw.Iv5e0YLfTD35SMOh_3Ft0LMYdYXoXQZa5iXFGSHOs.mkAdyGqHFdvpfsvVQVHgwbWcH_go
	HrzYlPFqnBHD73kULpjyhBeXbLmNtJ9rnthCZchgcmbQNzWAtjf_cfWRfk2mKmo80
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 29 Jan 2022 20:28:53 +0000
Received: by kubenode527.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 09973b49a5727a872dd3d1f0d1e50058; 
	Sat, 29 Jan 2022 20:28:50 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: accessible ssh for ipad?
Date: Sat, 29 Jan 2022 14:28:48 -0600
Message-Id: <D80A3920-6966-496B-94E2-F5B233C25F39@yahoo.com>
References: <45E98CDA-E043-4C61-AB51-50E61554B6E1@gmail.com>
In-Reply-To: <45E98CDA-E043-4C61-AB51-50E61554B6E1@gmail.com>
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20TKSxjC006315
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCldvdWxkIHlvdSBtaW5kIHNlbmRpbmcgbWUgYSBsaXN0IG9mIGNvbW1hbmRzIGZvciB0
aGlzIGFwcCBvZmYgbGlzdD8KVGhhbmtzLAoKQXNobGV5IEJyZWdlcgoKPiBPbiBKYW4gMjksIDIw
MjIsIGF0IDE6NTcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v3lvdSBjb3VsZCBpbnN0YWxsIGlTSCB3
aGljaCBpcyBhIExpbnV4IGVtdWxhdG9yIGZvciBpUGhvbmVzIGFuZCBpUGFkcy4gdGhlbiB5b3Ug
Y291bGQgdXNlIHRoZSBwYWNrYWdlIG1hbmFnZXIgdG8gaW5zdGFsbCBTU0guIElTSCB1c2VzIGFs
cGluZSBMaW51eCBmb3IgdGhlIGRpc3RyaWJ1dGlvbi4gaXTigJlzIG5vdCBteSBmYXZvcml0ZSB3
YXkgb2YgdXNpbmcgU1NILCBidXQgaXQgd29ya3Mgd2l0aCB2b2ljZW92ZXIuCj4gCj4gU2VudCBm
cm9tIG15IGlQaG9uZQo+IAo+PiBPbiBKYW4gMjksIDIwMjIsIGF0IDEyOjExIEFNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90
ZToKPj4gCj4+IO+7v0RvZXMgYW55Ym9keSBoYXZlIG9uZT8gdGhhbmtzLgo+PiAtLUJyaWFvIFRl
dwo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
PiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 96E7F28173F
	for <lists+blinux-list@lfdr.de>; Fri,  2 Oct 2020 17:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601654243;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=junt7MsXNSUp2JphJOxgS9frKXvQOgFttmF/m5slWds=;
	b=ebdswXhh2oKvXRhpPkucf3N6YvbJ1zw09hx6FDFDS+Ftst/RPVUzHGa0UCYHn+BppRrrqk
	0l/LeCWRJMnQQy+XE3kI6VefqsAXBjSN5uGisr7TyitKsSN/oTRVBUhBqu4ladBgx1jtDo
	MYnNj4JWHllxmTcm6kAlS5IvooOxR38=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-6NWiEDhwMiivHNleciRmBg-1; Fri, 02 Oct 2020 11:57:20 -0400
X-MC-Unique: 6NWiEDhwMiivHNleciRmBg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7868F10866BA;
	Fri,  2 Oct 2020 15:57:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C29410013C0;
	Fri,  2 Oct 2020 15:57:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E2E4B183D020;
	Fri,  2 Oct 2020 15:57:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 092FnZd0006607 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Oct 2020 11:49:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D6F1710AF432; Fri,  2 Oct 2020 15:49:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFE5410AF42D
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 15:49:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF12980351D
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 15:49:31 +0000 (UTC)
Received: from sonic308-2.consmr.mail.bf2.yahoo.com
	(sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-535-vy4suWe1ObG7Y4lZcMJGvQ-1;
	Fri, 02 Oct 2020 11:49:29 -0400
X-MC-Unique: vy4suWe1ObG7Y4lZcMJGvQ-1
X-YMail-OSG: YnKcGeIVM1lojhqYWynyHldqPKY4InqNuuqHluv25rpj5vO5X_S0r2VDIVwRFDh
	iB1RVDn3zhdt06LR6DHr5OKX2y12xmuGapozHSaNuleptVM9mN3jD2k5D3F8x0ye213dP_iNyQ_7
	w1Dgwim1OscOZn_a7rY0RgE83l9JX7IM3x2n0Ow5XXW35Ma3OwJkAUklDArRnul6inLyWx4Klt6g
	fNdp.ABBKaqBidHc8ibUuCWtAZsF3RymQNX5S.fmeW04UmAZAxBRbKEAI6ZeTYsLmE.q8rd.2sZK
	yBz0DXm6gJpGVqwRBXdTPtAQLU7b.xrdmCLTZdDXdSVujItM4j0tbaJ0x10vW1UWyLgchSOUso.y
	k3esaVcwAiSU2il73Z2OcvJot04mU49ImaeolQz5qaTEnBGuLP5CuGzfzAwqWRDCCP4oUaKpo3gj
	AGyWmDIfErklG16zb0qvqc9Vo4x8S8bedla5_voBQEmIHxIuuZFuEoiLmEmHIY22mM4b_eZx9gn6
	VNXbCYv3ZoZfHyWxFxzp94yI0DSJ3Oe9k3uNwJNpVFQxf3.ZDS68v9udtHzQfUwhX2YHsf4g60Z4
	FcK8HM_oSrO542VVBZ_lR.Hf1u.eZTsdRCsc6zriOaTXJ4po2QQGpzXedF1GBe5xeqUUH8TcBWWK
	WRFkjE0knVLu3PG5GWctcvfeKxjioIuKfYYoVDCLE0wteqMFRPLNB4Yybj4GnzZYaEmZ1Y7XZtyC
	WFlVedqNvyVCjI_WB1pWMtWwvnTGWI4gas8aGbBd5hk46TqS.D.VSKW9Ero7oLzluxDMNOp6JLvC
	H3TACLPXRZ5ibbNPnj4rgaXqS87ast0wMv2P6UK_clBMAESlvUxbGb9CzBuwaK.2a.dX2m33vReM
	CvUdw0yRjQVObQKZIBtM.lx5z4IdbltrZVkzDaTSR2syduVd.GbjDyygXPNE5axrbmYXRQu12vUf
	Txuc_bMFWIGtc2X96GgqO592.4Naq_MU3MLkpjUXJom4yYBDNmThH1IhRPz9r5n60zGc2FRNId16
	K2ZAHFaYRZEPMeCc_OTBJ0NhyBFAuDMeNQesnRF2hDTiLQH0WiBeC6GdW8eML90UZ3Y_cNoRq7i9
	L8NPRKJD4VRlvalH5EE81KDpI8Xl2WU7jOhiJP_X6tiGkGwUS0h32UHfWbxZMo_lRBSyDvPVGMf1
	5RBZorETvROWvBAhSpeXDlrAf20Cr0jZIRsyugkC9yp_BnSsD86C9UoOMZv1CrDKjxRolf4Gg2AP
	lP0yDYQW4v3ZYPkmOGFnHnQK.TXjzvvOvu0lGnWYFWhjIoJ379KvjFHohPKTDkLmWseJv0XVLCv8
	ESaxe3k9fLcTytuj23cAnK_i7BapweyMndU0v7s_NIaiJU_aRmhXtHOmszHCScM8FBNmZ2qgWJ15
	i.1HITPM8kvayDyQoUkJTHkkiwzxWGlXboeakmOxGsddisVroknxB8y4UidOYGbGxy7g1fMIJxSq
	3LjCUUJPZJg--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 2 Oct 2020 15:49:29 +0000
Received: by smtp414.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID e65ae42708f08a40499aa9cd26199c39; 
	Fri, 02 Oct 2020 15:49:25 +0000 (UTC)
References: <87ft6xoznv.fsf.ref@yahoo.com> <87ft6xoznv.fsf@yahoo.com>
	<CAGJxbF4FkVdc2mykt9ChgN2Yj2en6EvnmPeL+uVbjondqY+gsg@mail.gmail.com>
	<alpine.NEB.2.23.451.2010021020430.4800@panix1.panix.com>
User-agent: mu4e 1.4.13; emacs 28.0.50
To: blinux-list@redhat.com
Subject: Re: Continuous reading in Emacspeak and Cursor Movement
In-reply-to: <alpine.NEB.2.23.451.2010021020430.4800@panix1.panix.com>
Message-ID: <87362wpr0h.fsf@yahoo.com>
Date: Fri, 02 Oct 2020 17:49:18 +0200
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,


On Friday,  2 October 2020, at 16:21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> The intent of emacspeak is to be a working environment for computers.

What does this mean? Does this mean that Emacspeak is aimed at computers
rather than humans?

I thought it made all sense that it had to be customizable such that
there had to be an option for toggling continuous reading and continuous
speech without cursor movement. However, I feel that speech moving along
with cursor makes sense rather than to make Emacs like a music player
where you have to listen and not care where the cursor is at the moment.
But even with a music player, there is an option to pause and resume
where you left off. With Emacspeak though, you can't resume where speech
was last delivered.

    And it gets confusing. 
Thanks.



>
> On Fri, 2 Oct 2020, Linux for blind general discussion wrote:
>
>> Date: Fri, 2 Oct 2020 09:51:22
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: Continuous reading in Emacspeak and Cursor Movement
>>
>> Unfortunately, due to the good Doctor Raman's views on
>> Emacspeak's obstinance from being anything close to a "screen reader,"
>> there is no such feature. You're supposed to use Emacs like a sighted
>> person, mainly just using C-v and M-v to scroll, stuff like that. But then,
>> he did add C-e n, that command is there, so who knows. I just use C-v to
>> scroll, and C-s and just search for where I left off at.
>> Devin Prater
>> sent from Gmail.
>>
>>
>> On Fri, Oct 2, 2020 at 2:28 AM Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>>
>> > Hi,
>> >
>> > I am used to continuous reading in Orca whereby the cursor moves along
>> > with the speech. In Emacspeak, however, I don't seem to get this
>> > feature. So my question is: is there any way one can do continuous
>> > reading while cursor is moving? I would prefer to have a cursor
>> > positioned at the place where I call the pause or stop functions.
>> > By the way, I use C-E n (Control +E and n) for continuous reading. The
>> > frustrating thing is that even after reading a big chunk of a document,
>> > once Emacs receives notification, I have to try to find the spot where I
>> > think the last word spoken was. I think it may not be the optimal
>> > situation for reading or reviewing documents.
>> >
>> >
>> > If anyone is using Emacs, please can you share how you deal with reading
>> > documents? I am open to any ideas for this situation even if it means
>> > using any other screen reader  other than Emacspeak.
>> >
>> > Thanks in advance,
>> >
>> >
>> >
>> >
>> > --
>> > Ishe
>> >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://www.redhat.com/mailman/listinfo/blinux-list
>> >
>> >
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>


-- 
Ishe Chinyoka
Be yourself; everyone else is already taken
Find me and my Factual musings at: https://www.chinyoka.com/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


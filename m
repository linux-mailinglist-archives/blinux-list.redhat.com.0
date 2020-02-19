Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A8EFC16494B
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 16:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582127764;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q+JwbyEIHJqdQ7AAAISWykBG8ofz8K//O0Ey1rAyNn4=;
	b=Y71eOjyZd5/27Pp/bxm0FEJNRT04jVVDzYa5cMhZYvwUQuv7CTp7fLYOcQW7AyqDTuj2HY
	CPciX4vojb1pVdibAojX3BbTQ7k9WEEULgpYFX2r01ZuGsRuClRUFmb/j7yVdB5Qb4tmLo
	F9Jtdch3riL4pvSEiQ82QNrIX8UkNxA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-XCY5-ADSPhuP599MXYPZvw-1; Wed, 19 Feb 2020 10:55:59 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CEEF18A5511;
	Wed, 19 Feb 2020 15:55:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6893288859;
	Wed, 19 Feb 2020 15:55:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8D4DA35B15;
	Wed, 19 Feb 2020 15:55:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JFs7SS014714 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 10:54:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B21732166B2A; Wed, 19 Feb 2020 15:54:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD2EE2166B28
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 15:54:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24AB48028B6
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 15:54:04 +0000 (UTC)
X-YMail-OSG: fMhiOkwVM1mx9ZBz7inr8STTN96mhbP3CkabbICY45cWOza7vrEXP08KOZrBDRx
	zqKarR8NPL8QH13uZ7Gw1CslLn7w4kDQ8ugOf5RBp7tpACLZ4NsJkqgo5wJY29FanZRAXZFNwNJM
	S8WlXCCHlX5vPmRegpUOS_pQpCVbm.sn.3kVhFaD13u2Lc1ZEhYHy.aFn84K0BYzC1dvs40uSqdZ
	bGJ5pIbViX1RNmIC.EWkg4UV4XR665OBE35ydxChJbanJKifRcmusBbudzKlNl_P6t4eKCL7Fq_4
	NtvItB0UXNo5fzOFx1t4UWHmfrzd4KU_e.fq5DM54RlrrqFIhaPYgyWnRKky9_FNmzS98vgwdJJB
	izJX1D71hz2tmNqrUZzvsMQ32uzY5a1xhQmEMZPc5qytkx9iQPP3ID_WY2B4Kkl_GjoIyd_RM5qa
	kP9o3RGRvjxCb3wAW2Bv4V56YArDxJVc5DevV04KsaoxsPAzEw9zVkqLGqXNDjOotR_wx.eZN8cR
	JtaNovsS5W5OYExge1c0pw28kRcvGpG3Mf4laEEidwKSmBKZWyK4oJwfpynttMFnirB.wNwfLgL9
	4v7p_GUcmExijJJ_IyNZ.aykVDpJncJwe7TDO8Swb5erfqKYTT5yMphCuSeHoEJq8US_XQ2dVAoP
	UGZAGxgzp4wsl.WnlLPXpcVEKFFdL9ulwSNc02h1tNjMIVLVKFkDmJo_mcy_nPmE8fRwzJkyNyLd
	99XkH8yoe2z6iuAvIwP3ZjYjkDPYh6Q4De_FvYm_FIIUc4MvSKH.TxxISZU0i7KeA_VZP58CRiGB
	sjKk_LZJX01oIq8MIuClge6iYWZcF8cSQK8uAkTgS2zhe2qqZIgWFNU0uPzT_I9p.X7A.IXmoebs
	bGJIJqQ1V38oFf6R9Up2Is0jZPRJS17dDjjhsNkdZIdlXalrLddKQOB2ewM3Hnl3UN7VtX9u31e6
	HzljH45EvaT1JbhJ1eotKw4_AlgoTxfdob5BviVv5teX3815um8XEr3N6OkvVhTYqRnYKUE8wpnI
	J_DrzeTYhRs2cLQ3IdMK9YPIrOnlgz_Nlu2eYn2pa6ARvcyLY8Mumv8.4.PYFjzIsaoUwsYyi4Gb
	6TA6aubCCQY72EYXQYKS_7ImHF3HH3v_QzpwuhRxGbAVtaxU4uK2jTsIMrWx8TQds19G1pchwbgW
	510P_MJBNSWJ8KqL6x8v_lA73cXKTViX6XnJXcndL144l0uUYhJdUvSamekmjep7B6BmonsY7IOk
	s2.k9eMUigfWjV7ErAEWiwpKEHv95vTMyH20bUWL0X4P3sSIetQjWJsoBmto5z4tz2iSlB_nh6Kc
	m.ajLWsgmsfRbf3drVTtd6E_9tgq.W596RLa4MIcb22zN_Abw59nZGKj28WVruUcuWEtCvV3uQE.
	iE3atXU.gNf8-
Received: from sonic306-2.consmr.mail.bf2.yahoo.com
	(sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-226-yfxyxD4nO3iwjB7CIiTcgA-1;
	Wed, 19 Feb 2020 10:54:01 -0500
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 19 Feb 2020 15:53:59 +0000
Received: by smtp415.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
	ID dbeb0ccaa6eb1e2d57b3d4d804d15960; 
	Wed, 19 Feb 2020 15:53:58 +0000 (UTC)
Subject: Re: early warning I hope
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
	<8b00d709-122b-a693-cac3-1630c2bbec7f@free.fr>
Message-ID: <5d23cbb9-178f-ee53-1c84-a407bfdcf849@verizon.net>
Date: Wed, 19 Feb 2020 10:53:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <8b00d709-122b-a693-cac3-1630c2bbec7f@free.fr>
Content-Language: en-US
X-MC-Unique: yfxyxD4nO3iwjB7CIiTcgA-1
X-MC-Unique: XCY5-ADSPhuP599MXYPZvw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JFs7SS014714
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I just want to say in this thread that I'm fairly new to Slint and have 
found the support very good.?? I appreciate it.


I'm not disparaging other distros, by the way.?? I've used Arch, Debian, 
and Fedora for fairly long periods.


Al


On 2/19/20 4:47 AM, Linux for blind general discussion wrote:
> Hi Micha??l,
>
> let me answer to this part of your last message:
>
> Le 19/02/2020 ?? 04:28, Micha??l Caron Couturier a ??crit :
>> On the other side, Slint is Slackware based, out of the 5 majors
>> distributions bases, it's one of the two far less used so the user have
>> barely no community to help him in case of issues.
> Really?
>
> For Slackware proper, there is this a very active forum:
> https://www.linuxquestions.org/questions/slackware-14/
>
> For Slint specifically we recently replaced the former mailing list by a
> new one, cf. this blog post:
> https://slint.fr/blog/welcome-to-the-new-slint-mailing-list.html
> It is very friendly and active, you can check looking at the archives
> for the current month: https://www.freelists.org/archive/slint/02-2020
>
> We have now also a mumble channel dedicated to Slint.
>
> So your statement "no community to help in case of issues" is not true.
> The Slint mailing list is even more active than the debian-accessibility
> mailing list that I also follow <smile>.
> I don't say that to despise Debian which indeed is a good distribution,
> and Debian contributors like Samuel do an outstanding job.
>
> As an aside indeed Slint ships Mate with mate-tweak and Compiz, and
> documents how to get the best of it:
> http://slackware.uk/slint/x86_64/slint-14.2.1/doc/Accessibility/CompizKeyBindings
>
> Slint also allows to switch between console mode and a desktop without
> loosing speech out of the box, which you can do with other distributions
> only with a not obvious post-install manual configuration.
>
> That's not to say Slint is perfect, it certainly isn't. But we all ears
> to bug reports and requests for help and enhancements.
>
> Best regards,
>
> Didier Spaier
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


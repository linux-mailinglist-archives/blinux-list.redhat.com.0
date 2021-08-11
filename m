Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C9DD93E9272
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 15:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628688117;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=HHGGgMTpeh/1rg4GYLD6sXXNgCJDOFVnEmBFy+94eoY=;
	b=C4fO7ee+L+WawuTUj9Y0ByikGHWSmOhNpdbJZn+4OU7IHQg66+l5BvluARHcYiNIGkUyT6
	ZOQEvq6EUNO1LXFFpcrXk87IqLRhPbQZCiP2cn7eqAEly28Hm4MNQLFShHdlTCFtZe6TMt
	PIaFfGjy+CTXdWNtjstiTgaEr0GlsyY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-C9gEpyb2MUujrF1iljzfTQ-1; Wed, 11 Aug 2021 09:21:55 -0400
X-MC-Unique: C9gEpyb2MUujrF1iljzfTQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BDA28760C1;
	Wed, 11 Aug 2021 13:21:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31F23620DE;
	Wed, 11 Aug 2021 13:21:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE30D181A2A6;
	Wed, 11 Aug 2021 13:21:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17BDIObI024205 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 09:18:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 96E131112C1D; Wed, 11 Aug 2021 13:18:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91DA91112C12
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 13:18:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6B698CA944
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 13:18:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-453-yGUNhI24PAW6O1crmgm05w-1;
	Wed, 11 Aug 2021 09:18:09 -0400
X-MC-Unique: yGUNhI24PAW6O1crmgm05w-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 75393A3EB9
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 13:18:01 +0200 (CEST)
Subject: Re: I can't answer to someone anonymous (was: Re: Help, I need a
	Windows VM for my work)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<f791451d-27c3-b6df-2294-4346caed0107@gmail.com>
	<6016bdff-564b-90a3-836b-b2d82a124f0b@slint.fr>
	<6cc6f82b-c166-59b0-506c-51a75e805ecc@gmail.com>
Message-ID: <7eb5aa75-e8b3-06b2-0785-f3b0fb365cc9@slint.fr>
Date: Wed, 11 Aug 2021 15:18:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <6cc6f82b-c166-59b0-506c-51a75e805ecc@gmail.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="------------6A9D07D818B5F20FB6B9E69E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6A9D07D818B5F20FB6B9E69E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Kank,

please find thje file attached.

Cheers,

Didier

Le 11/08/2021 =C3=A0 08:25, Linux for blind general discussion a =C3=A9crit=
=C2=A0:
> its
>=20
> Hank Smith
>=20
> hank.smith966@gmail.com
>=20
>=20
> On 8/10/2021 11:04 PM, Linux for blind general discussion wrote:
>> Hello,
>>
>> Several messages have been sent to the list, quoted below, but I don't=
=20
>> know by
>> whom as this list hides the sender's name and email address.
>>
>> So, if you want an answer from me, please indicate your name and email=
=20
>> address
>> in the body of your message, as I am doing in this one knowing that=20
>> (dot) is to
>> be replaced by . and (at) by @ and/or send also your messages to my emai=
l
>> address I below.
>>
>> I can't send privately something to someone whose I don't know the email
>> address!
>>
>> Didier
>> Didier Spaier
>> Slint maintainer
>> didier (at) slint (dot) fr
>>
>> Le 11/08/2021 =C3=A0 05:01, Linux for blind general discussion a =C3=A9c=
rit=C2=A0:
>>> how do you get control to the vm from the host?
>>
>> > also I didn't see the script attached can you resend it to me please?
>> > On 8/10/2021 6:59 AM, Linux for blind general discussion wrote:
>>
>> > can you send privately please it didn't attach
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

--------------6A9D07D818B5F20FB6B9E69E
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--------------6A9D07D818B5F20FB6B9E69E--


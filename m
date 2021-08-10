Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 333C73E5DE9
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628605839;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=/s8ygvhy8oxfRJjKDgpfJ05Cw58wfbfnxunaFKU/oiQ=;
	b=IXx9ioDlJVVb5CNvdOSsvIgtBcPqxJUTOa46Fnj7P0p+Scr6s/nXOSSvy3eYKmF6lUScRJ
	1CPhcV8gAoDdFUoFsHyGka8rjsYPg9c0q1nJM7Io3gOuIQerU8uG+u4SCFM6U6cG2PKlLR
	TCA+ObvdScMsa4JphvefOmpUNIHtgKU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-XZP9KPBQPeu5GGI3KyW8ww-1; Tue, 10 Aug 2021 10:30:37 -0400
X-MC-Unique: XZP9KPBQPeu5GGI3KyW8ww-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29FE4190B2A2;
	Tue, 10 Aug 2021 14:30:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70655620DE;
	Tue, 10 Aug 2021 14:30:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D6F64BB7C;
	Tue, 10 Aug 2021 14:30:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AEQ2HJ001608 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:26:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 48E471011003; Tue, 10 Aug 2021 14:26:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F75E10130EF
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:25:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C84D8D1392
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:25:59 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-376-OC-lg0VtMI2Ae4pmnIGAMA-1;
	Tue, 10 Aug 2021 10:25:57 -0400
X-MC-Unique: OC-lg0VtMI2Ae4pmnIGAMA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6FF37A1CE6;
	Tue, 10 Aug 2021 14:25:49 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com, Brandt Steenkamp <brandt.steenkamp@gmail.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<68508c52-c4fe-c94a-155a-3d0cf3196645@gmail.com>
Message-ID: <a3df77f7-5f26-2f4d-ea06-bad6b23fd87d@slint.fr>
Date: Tue, 10 Aug 2021 16:25:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <68508c52-c4fe-c94a-155a-3d0cf3196645@gmail.com>
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
Content-Type: multipart/mixed; boundary="------------E6BE6C7C3D5E722F49D0A743"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E6BE6C7C3D5E722F49D0A743
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hy Brandt,

Weird, it was attached.

I attach it again to this email, that I also send you privately.

It is named windows.sh

Cheers,
Didier

Le 10/08/2021 =C3=A0 16:13, Linux for blind general discussion a =C3=A9crit=
=C2=A0:
> Hi Didier,
>=20
>=20
> Doesn't look like the script got attached.
>=20
>=20
> Regards,
>=20
>=20
> Brandt
>=20
> On 8/10/21 3:59 PM, Linux for blind general discussion wrote:
>> Hi again Brandt,
>>
>> The script is attached
>>
>> Intructions for use:
>> 1. Create a directory ~/qemu
>> Assuming that your username is brandt; hust type to do that:
>> mkdir /home/brandt/qemu
>> or just:
>> mkdir ~/qemu
>> As a reminder, ~ stands for /home/<username>
>> In my case /usr/didier, in yours I assume /home/brandt
>> but anyway the output of this command will tell you:
>> echo ~
>>
>> 2. move the Windows ISO file in ~/qemu,=C2=A0 renamed ~/qemu/win windows=
.iso
>> For instance her I did this:
>>
>> /data/images_ISO/Windows10_InsiderPreview_Client_x64_fr-fr_21354.iso
>>
>> 3. Download the script windows.sh and store it somewhere
>> Change to the directory where it is installed and run it like this:
>> sh windows.sh
>> Then press Enter.
>> Press=C2=A0 Enter again after 5 seconds to make sure it starts the Windo=
ws
>> Wait patiently until the installer displays its first screen in the VM.
>>
>> Notes:
>> You need to be in a graphical environment like Mate.
>> If the VM steals the focus, type Ctrl+Alt+G to get it back on the host.
>>
>> After Windows installation, running the script should start Windows=20
>> directly in
>> the VM.
>>
>> Cheers,
>> Didier
>>
>>
>> Le 10/08/2021 =C3=A0 15:06, Linux for blind general discussion a =C3=A9c=
rit=C2=A0:
>>> Hi Brandt,
>>>
>>> I will attach to my next message a script that sets up a qemu VM
>>> allowing to install then run Windows later today after more testing.
>>>
>>> It should be usable in any Linux distribution with a recent qemu=20
>>> installed.
>>>
>>> Cheers,
>>>
>>> Didier
>>>
>>>
>>> Le 10/08/2021 =C3=A0 12:55, Linux for blind general discussion a =C3=A9=
crit=C2=A0:
>>>> Hi all,
>>>>
>>>>
>>>> As I stated before, I am running Slint on the bare metal, however my=
=20
>>>> work entails teaching NVDA to clients, obviously running Windows.
>>>>
>>>>
>>>> Therefor I desperately need a Windows VM, so I can make a living. I=20
>>>> cannot figure qemu, virtual-box, I have no idea, and VMWare=20
>>>> Workstation Player doesn't want to install under Slint.
>>>>
>>>>
>>>> Could someone please, please, give me concise instructions for=20
>>>> setting up a VM using qemu in Slint?
>>>>
>>>>
>>>> Warm regards,
>>>>
>>>>
>>>> Brandt Steenkamp
>>>>
>>>>
>>>> Sent from my gass powered Slint hair dryer.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>=20

--------------E6BE6C7C3D5E722F49D0A743
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--------------E6BE6C7C3D5E722F49D0A743--


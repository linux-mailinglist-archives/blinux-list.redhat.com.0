Return-Path: <blinux-list+bncBCHY5TMQ6YERBUXP6K2AMGQEY57TPJI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC389383BB
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jul 2024 09:25:09 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-44cde9ed81asf36197051cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 21 Jul 2024 00:25:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721546708; cv=pass;
        d=google.com; s=arc-20160816;
        b=s1IWaJphN2LihyGtvS/eltFzOsf3IJ9QB5muIcBpPY9o74sTi7bw9abzrqNnUpCcp3
         hBE/CeWPRD/COl5W0WnNNqEb3nOO1N8U+q7IogAvsArapJxzakj9jLGdLPozQ9qZ10CS
         YrzMYjN+Gj7UoPGe8MSSqd0vbcwr/1eXdNu7XdcuEllQ0K+GFI1obxo3kWoCDnqkT6Ko
         FOT78HaWoSWr0Nx6GO2PbilunXIk1hlBaY4lmiMG4+KeWhp0pkIDDO7XBPVuMUysprrv
         CFdGTZQVHScBpEmzVruspNdy0hPMByeHVbl4cjWIfUbOcwOyBB+RF/YsNPsQ86+0ousG
         7wZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=fQF4ZmhwQdnDXZdN6UmLLf/WxArxEAcZkVIuGSl5XDk=;
        fh=KFsna0HgaVai2++Fpp3QsTQZLHdMD1nofyQu9aCWk2o=;
        b=ByJ1Lw/VrPqHAud5zq6Gqgm2Nn3aj63e1pTuRdL7IyaB4kuqMjvNla61NmZyA0QjYv
         1MgJM8OMvoyhnCLQQLdXoAdY/V+QD8bEnCXAqHMa7DROqV8CcGX0ORlHh6I6vshIJ1oh
         NmT0pfpbueOcGdOxlJbQTyDFfaiynFj0QV6tFklisS0uHUa3AHH5m7CQUkHpKixwSWSg
         cySFsoLLTU3zNYkVWrqjU6xOzesH+M/BYd94D50j+PqCMnIiUfjtikyKgvnw9PJAa0yp
         MDo5A8KybY+Vo6i2BHYMLr156vZ7IUPEyzDz9BKm+Q6/wmOcmInjIzhioGDq7fHAMWYh
         bDMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721546708; x=1722151508;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fQF4ZmhwQdnDXZdN6UmLLf/WxArxEAcZkVIuGSl5XDk=;
        b=bZ9ezJLc/vfNNXk+CBwyi3Bl0vVf3l2jhl25GwMU2Y/tRBxJP1UaZ80vbYlJpS9j1r
         ZmG+yWhhlVxwWtlLIaDODtiljaqwaK0FQtBPpu0R8Xe1phktP25Ku9we0v6Y7seTTIeZ
         zNSY2DWgLRn98vGydpAlwN9UFWT3CQdsPD96SOJv4+yJoMnQ32uS7a4r31G0q6OReYkS
         WbfdREfTa0a11E+jnCBmVmXMEABFWh0aBqNFQEMncc9TElCYmalWpF9Nbn8wuAcdQsNi
         HsR476brCCZi8y4YbXolLHUff7iBZ/3F9KE1Nkd9pG20SbasE+66jwB4rvJn4ed3hQ2c
         nGag==
X-Forwarded-Encrypted: i=2; AJvYcCUdtElg/ZQRj8o1MrCtTeSP4DFKOxIE4UgC+4YoSbXUazQXuJ/nuhAho4YZZQ601MqOzFrS3RLaqCroOaoyVhKQoNxGY9QnkG09
X-Gm-Message-State: AOJu0Yw4lmoKgV/hqBckq+JmthjdaUgGqKDZN1FtKQ6RA2GtiySeJ+46
	DTKNhk9KVB5y2o3DzOBERLGnkxfzz23+vk87d1h21BF+Xo12LVwRTJXKz3P9Nuw=
X-Google-Smtp-Source: AGHT+IFDddbn1e821rvD4DPsjJctPS9ee/2/d4Z2JWrZGIqV7APw+KnscVkVVIefQT5xJlbm3NE1Qw==
X-Received: by 2002:ac8:7f8c:0:b0:446:5a63:d68f with SMTP id d75a77b69052e-44fa5281655mr47141161cf.18.1721546707633;
        Sun, 21 Jul 2024 00:25:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a04:0:b0:447:dd69:eb84 with SMTP id d75a77b69052e-44f8f27f936ls60130501cf.0.-pod-prod-01-us;
 Sun, 21 Jul 2024 00:25:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUP24GrzlCIcMeoDgBqAoswXl/33DjaKtWORLNuKyIiK4aZPXV4DiCbtbM/nEazhdNefTXooUtsJGcu0NbPR5yIpoL+r81iAWw9jOsb
X-Received: by 2002:a05:622a:1386:b0:43f:f291:120b with SMTP id d75a77b69052e-44fa528637bmr60695291cf.24.1721546706445;
        Sun, 21 Jul 2024 00:25:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721546706; cv=none;
        d=google.com; s=arc-20160816;
        b=jOc424UoRrajChUbcd+gpagwqvZc9g0NywYMSAwuaRt36EjNrjW3MixhJzIa0/TV9b
         bulnARNBzVR0xgAlYDK+MM5e72plSU6yAzp2Hde+EQ98Hj5T6DwK2Mu/bDSznjJyQqBf
         pIW3eGoV1WadjRsWRrH4mrN+i3yg3NmExLXLHvy5la1B5BjmIZNkQqDLGU4JTZcjEv4G
         x51EhGbLXpVNwP1SAj0fU+rcGrbH2YIiFmVK3BIBzA9/PSzECLCsco00rgH/R+ViVtAD
         Ya/QZ78cASoqrmHd0EmG4aE2p+P3cjoZ1J5rLmJygErpghhSMQSdc7IVtnQ3b1nSwirZ
         cqmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=sGZw677674oc/C53jT9M7HKvDJbe/W0pHnEZgUCiHJw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=wkjSgaTLVcq5YfVsdCMcOdBTE06bv5cnGwDry5KGVTPb3TzMcbMTZxgJ22lDsuYDnb
         UdPr6M95Ug5FAul/FN2s1FSYdywStd+1pRTzvnL/cAEE8czJhtcmI6ZQqLM1VZCp9Mlc
         c5+lxqlsLMU+VhJmQGQrj6DgxjHh/6BxRTKi76LckZc8U5bt13MDNfpKfjxQ0Y1IgIxc
         v8X6t9i1VMdsJWtPPdjGSbdph+/WEW1tXMOfDMH8AWV2KzphFU5sC3utulgaB45qp3yE
         K70AM3hza9JZSE5J4cQXIjYigAREQwZx3ZVJWdteq1PaLc9caS3S/2pDgqF+1JUEzEmM
         Ov2w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44f9cd28348si55960731cf.199.2024.07.21.00.25.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 00:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-502-YTW4cbD6NAy6DHnxqA9Hlw-1; Sun,
 21 Jul 2024 03:25:04 -0400
X-MC-Unique: YTW4cbD6NAy6DHnxqA9Hlw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B19F1955D42
	for <blinux-list@gapps.redhat.com>; Sun, 21 Jul 2024 07:25:03 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5B96B1955E80; Sun, 21 Jul 2024 07:25:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 58B031955F40
	for <blinux-list@redhat.com>; Sun, 21 Jul 2024 07:25:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C643F1955D48
	for <blinux-list@redhat.com>; Sun, 21 Jul 2024 07:25:02 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-182-ACQeigQTNCeEwvuphachLg-1; Sun, 21 Jul 2024 03:24:58 -0400
X-MC-Unique: ACQeigQTNCeEwvuphachLg-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id DEE4E3F829
	for <blinux-list@redhat.com>; Sun, 21 Jul 2024 10:18:07 +0300 (EEST)
Message-ID: <d2e66533-20a5-4a2d-b9d2-268295987766@harrastenurkka.fi>
Date: Sun, 21 Jul 2024 10:17:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: how many Linux machines do you run?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <ZpUcMqWN2_PPivOC@thechases.com>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <ZpUcMqWN2_PPivOC@thechases.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Are you using orca with bsd. Do you have freebsd on your desktop and 
openbsd on your servers, how did you get orca to work in bsd, I tried it 
once and it didn't work that time. Some issues with bsd's sound system

On 7/15/24 15:55, Tim Chase wrote:
> Tim here.
>
> I've winnowed down my collection of Linux computers mostly because
> I've migrated usage to a mix of FreeBSD and OpenBSD.  That said,
> they're similar enough that hopefully my answers will be useful.
>
> I host my own email but it's a non-trivial task.  *receiving* email
> isn't so bad, but there are a *lot* of hoops to jump through in
> order to send email without the mail-monopolies flagging it as spam
> or outright rejecting it.  You need your DNS set correctly, your
> reverse-DNS set correctly (not all ISPs/providers will do this for
> you), you need to set your SPF and DKIM correctly in your DNS as
> well as properly configure your DKIM certificates in your mail-server
> (and have them renew regularly), and a clean IP address (it might
> even depend on your netblock neighbors' behavior).
>
> I run OpenSMTP+Dovecot on it so my beloved can connect via IMAP/SMTP
> from her Chromebook/phone, but for my own mail-reading I mostly
> just SSH into the machine where I have tmux running and access my
> mail folders directly on the VPS (I use mutt, but alpine or aerc
> would work too).
>
> So for the common (not super-geeky) person, I'm a pretty big advocate
> of outsourcing your mail (at least the sending part) to companies
> that will handle these headaches for you.
>
> That said, the hardware requirements for hosting email are pretty
> negligible.  I have a ~$5/mo VPS instance with 2GB of RAM and it
> is more than sufficient for my email and website.  Storage would
> need to be commensurate with your usage.  But my mail-server has
> ~30GB of space and my personal mail archive is under 1GB.  For just
> mail, you could get by with hardware specs comparable to a Raspberry
> Pi because the requirements are low.  Unfortunately, if you start
> dipping into the lower-priced VPS instances (like the $3/mo), you
> often encounter sullied IP-addresses/blocks where others have used
> them for spamming, or the provider bans outgoing email (for that
> reason) so it's a crapshoot.
>
> A quick tally around the house turns up 4 OpenBSD laptops and two
> FreeBSD laptops (most are hand-me-down hardware) in addition to the
> two OpenBSD and one FreeBSD VPS instances as well as one Raspberry
> Pi which runs whatever OS I put on the SD cards.  Most of the laptops
> ran Linux at one point but have since been swapped out for BSDs.
>
> If you're venturing into running your own Linux (or BSD) machine
> at home, I encourage you to try and obtain dedicated hardware so
> you can experiment and repave it as often as you need.  As you can
> tell, I like hand-me-down hardware for playing around.
>
> -tim
>
>
>
>
> On 2024-07-14 23:45, Karen Lewellen wrote:
>> Hi all,
>>   many times I have shared that my entire Linux experience is tied to shell
>> services.  Dreamhost for my  employer, shellworld for  both my personal
>> site, and an account with them.
>> Because shellworld is still refusing to incorporate current email demands
>> for ptr records  for host names, I am wondering how others manage their
>> Linux experience.
>> If Your host your own email, have the equal of a Linux shell with several
>> browsers and convert tools and so forth.
>> Do you use a single dedicated computer,  different hard drives, external USB
>> drives, or partitions of a large drive?
>> Aside from educating me, perhaps learning how uniquely one can run Linux
>> might help others new to the concept.
>> So, how does your Linux garden grow?
>> Kare
>>
>>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


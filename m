Return-Path: <blinux-list+bncBCVPTHE7K4II7GNAVMDBUBB4P7QLY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD937FE834
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 05:16:16 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-67a27d5e4d9sf35718106d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 20:16:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701317775; x=1701922575;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/iSG0go/mkh5T81KkIHXXBv3TVXLWEh1kSktFLBvSc=;
        b=DVZx/XQeyMp6p7h45Qws+abUpUv6kkzyUxtKbBNS6/5zKhVV36L+3rB+EXdoh99Rmz
         V9n484G5vcJgMT/CMbAJo/AoNFtZx8PcW/ozZLuWU+904OTPdvvm3RCYUsZm32XlvRUO
         ip4W6JejZwsA1OmIMZTxlHuedlEhSWjl6cOVuCGWoYGF6LaUQvqVqxG+vxWrOzPgoUdB
         Oy8amFnjbsoDgS2LYZ6HoWsOi2pqYybGupFl/ggLxYBwSKL0xK1umBjr1ZbXkQGNaXxl
         q7tDzX6zz+ZkUanffoqsVEDTm4vBmu7Umb49gMt/XX0IQkY6xtowanIuRu2ATeF4bm2d
         +3vw==
X-Gm-Message-State: AOJu0YyPyByfCrsn2VcGcChtQZ0wxjCaAFC/8/55wAYtRvuMiPuRX6z2
	MsC8YLaq98szKbZyNTAW0bIOCg==
X-Google-Smtp-Source: AGHT+IFuikHs4iL8IIkkAELXtfnE+xGSEnC+NnH/mVztItC4NIc3d/uNSTMw7OkXeK/SILE+mwdLJg==
X-Received: by 2002:ad4:4d81:0:b0:67a:6801:bf90 with SMTP id cv1-20020ad44d81000000b0067a6801bf90mr7066742qvb.8.1701317775529;
        Wed, 29 Nov 2023 20:16:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:58e9:0:b0:67a:31bb:ce0f with SMTP id di9-20020ad458e9000000b0067a31bbce0fls1275852qvb.1.-pod-prod-00-us;
 Wed, 29 Nov 2023 20:16:14 -0800 (PST)
X-Received: by 2002:a05:6214:240d:b0:67a:4d9d:eadc with SMTP id fv13-20020a056214240d00b0067a4d9deadcmr21388481qvb.13.1701317774670;
        Wed, 29 Nov 2023 20:16:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701317774; cv=none;
        d=google.com; s=arc-20160816;
        b=KAVm/7URBa+YA/QRvrKMz1eBI+ebA6S0zkKqXXcg1lSfggO4YH+7HrCYZxrDDe6Krp
         von6lGthBDFTEeO72b57HmX2VGo008SEXbajyyyQs4sAdAlhYq7XMSxm1hIkDV6ljU7W
         pUmxVIb9mTqBGa0xkDx+MRG/RTliYzkYMzCZd7xfvI5udB85TCuuh56w0OBWUTTagw9u
         tOLfjpRgzUN0WGylbR5eEa8C0mKl66+VVqj8Iyy0SlPOUOns9gaSaHHA3PJVG7sf8yom
         oSOVgfbtvwjln04wd19LM5Oxkt839wVrAZRj6/PirMwIbiCB7nkBA/MJd7KQpFouzfJP
         VdKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=R/iSG0go/mkh5T81KkIHXXBv3TVXLWEh1kSktFLBvSc=;
        fh=y/YbekFG22edERQKGxN65Pv5t1bJPotRFgGRwngzQYQ=;
        b=fxjgNJ7Y5A89FqqhjiF7kBCN0A3wMUNbkBRY0amghhHSqNuEglgiUfXtVhZq6HoIAm
         sgp7frw0ylGm5zHACj9q+cCS86CBimaX4L6kZISFl55h8rsJCWbRs0GGbWgtWxZPonwr
         xHE6Wtrcz1Wljlimq0kn2HFl4R9AuXUkSgwFAOTj/OJx6ocpQa3Mz5L9GsQjbX+iuEZX
         sUvZ/YgfLgDLhN7467HSM98fJxXM8BapYKRg1YEMRmQRjyNzj3yGSiwXOtG1ydqyDJxv
         XSeXWeKShfQX3sS+FW+OjexUQmlhN93QGWPvCwR/CdBW5h8lBZoLxLCEd1eZ2hgbeZRa
         bbZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id dw26-20020a05620a601a00b0077d98c41377si270946qkb.442.2023.11.29.20.16.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 20:16:14 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-487-FUGjTMk-NZCErS9F4Df1AA-1; Wed, 29 Nov 2023 23:16:13 -0500
X-MC-Unique: FUGjTMk-NZCErS9F4Df1AA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFE45101A53B
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 04:16:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CCE46C15883; Thu, 30 Nov 2023 04:16:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C60A5C15881
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 04:16:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5BAD29AB3F2
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 04:16:12 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-591-ufhwtahrMqiu6051p9rw_w-1; Wed,
 29 Nov 2023 23:16:10 -0500
X-MC-Unique: ufhwtahrMqiu6051p9rw_w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id C459C44FC7;
	Wed, 29 Nov 2023 23:16:09 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9B3A21001B8; Wed, 29 Nov 2023 23:16:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9AB341001AA;
	Wed, 29 Nov 2023 23:16:09 -0500 (EST)
Date: Wed, 29 Nov 2023 23:16:09 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Jude DaShiell <jdashiel@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Chime,
I believe that e-links has an actual option in a menu.



On Wed, 29 Nov 2023, Chime Hart wrote:

> Well, Jude I ran that command here in TCSH in Debian, unknown option. Would 
> that command also work in e links?
> Also, Karen, while I usually don't look at spelling, I think you said 
> something about links the chain, but typed l y n x. Honestly, I have never 
> understood those references about cats-and-chains, so I usually separate each 
> letter so there are no confusions.
> Chime
>
>
>


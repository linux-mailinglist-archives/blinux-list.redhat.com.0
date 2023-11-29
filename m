Return-Path: <blinux-list+bncBCVPTHE7K4INDTM2VMDBUBETRVI4G@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B077E7FCD11
	for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 03:49:55 +0100 (CET)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-5d1b2153ba1sf20542547b3.2
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 18:49:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701226194; x=1701830994;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZHgOtB8XZAXHYIs4LlP9DnNqbXx8UoQyNJQb7BupHLk=;
        b=eVwHO0rpxkOGx33By1n7UABt2rjNGIHkGsTCHsGafcTr44Vqw+BG40JQrCHQlMmX8j
         zaTe8UCd672Zva1tIii8OwhAoDEFjtqnXPF+r9PZZm0I9eNZy7TDiaGBkStEWUho0SkB
         KBHqjTHu5fLy3fCVOjoZfKMuqo2qO10CDdkhOFlEfgPp60U+X/vUx+LcsXhheQOS4CRp
         v/5YnEvi5royPp5UaO64fX7De1WvRlgsb/JBw947KIxquKWKe/d1RiZ0lm5g1RIW7DzX
         5GcMZBq+vwI1R2gy5QXaRhn7gSKpJ9Ew/XCyP1fWmNxLFyFmpMmwIsHGXhQZ/H6nVz/V
         sAdg==
X-Gm-Message-State: AOJu0YzqPsjyEur8qGCeU4Gn815IV3Kqhvc77kGBXji6waIR8vfS44bj
	hr7zFDiA8O4kupDS5WHJzOGrPA==
X-Google-Smtp-Source: AGHT+IEOoju++0pdz7qzO+Xoz8wXjWjpZfyWTjH9dL3+K2EIxYvQWdKmUJzMPvDB5dZo+tU11IrOtQ==
X-Received: by 2002:a25:56:0:b0:da0:d018:b88b with SMTP id 83-20020a250056000000b00da0d018b88bmr14434342yba.42.1701226194066;
        Tue, 28 Nov 2023 18:49:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:3385:0:b0:daf:5f63:a812 with SMTP id z127-20020a253385000000b00daf5f63a812ls766164ybz.2.-pod-prod-03-us;
 Tue, 28 Nov 2023 18:49:53 -0800 (PST)
X-Received: by 2002:a25:2057:0:b0:da3:74ad:e05e with SMTP id g84-20020a252057000000b00da374ade05emr12769601ybg.40.1701226193356;
        Tue, 28 Nov 2023 18:49:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701226193; cv=none;
        d=google.com; s=arc-20160816;
        b=rYzCBHinAVf/0Z2Y/AMxRQCgx8t+XF8c0b7q5UlSwbLW7LXbDvIYqQOQld0ZFMI0Ey
         pKsxJSGQhFXptQvXpDnEyJ7eXsjwkXWhFD7qOmIAn5EVDfYbQ0Wh8KDTJnT/KzR2OIiD
         945xNmHYb/aqEaTe6tI7pEG+XCPZLbnTby+n5q3/6TBzuUxTOVyo125gj058gDIzh8N0
         NPR6dddnbOCKw5kmxMHYrY38uqVp6nMFcQJodrRvS4f/w42zadaqw1lAPGYJjfvynwef
         jltTeSXSb1L2ZS4pZRTR4qLQJG/pG3lJmcq3avGdqYD5CzlLl1DAExbygtK3Y1M392RC
         M0QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=ZHgOtB8XZAXHYIs4LlP9DnNqbXx8UoQyNJQb7BupHLk=;
        fh=a2gOYQit2m3F+14HWQmgCqzK/7S58R4vI3rgWCzpluc=;
        b=w6v94AoQu5N5xudIOoYiZrGReidtqLBfKfna5B0U9worN/PbPph/04DKD46IsdlKEU
         PEgXyTiuayiBmY3hBKyVmuTuScM9fcd9r7ttynYaVP7tNUOYyuqs7+J6yjJQpEUQXuM4
         Ka/XJcgW9d3HFkTskiU3LKhG/JzLkLm+cJiF5DbZxYIDsnTClSFbiI7/ZwtPlmXBb/Zy
         c8s1wF/dCnryeWnYgU78AFKLl5L7T71fvGpxIaniacwo9yoCRxJ5UMrOczRrn3ovbj7K
         mVSOMBkzmZxNw6BMX9lyK498+yoLToz6TKnj0BN+tzPcU9iD84H8pJA+gpC6JOhDp3iA
         eNTg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id ew3-20020a0562140aa300b0067a22fc7b1bsi8681435qvb.616.2023.11.28.18.49.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 18:49:53 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-416-aKhtiAquMkSXtGQcmBtEoQ-1; Tue, 28 Nov 2023 21:49:51 -0500
X-MC-Unique: aKhtiAquMkSXtGQcmBtEoQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 790688556EE
	for <blinux-list@gapps.redhat.com>; Wed, 29 Nov 2023 02:49:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7589C20268DD; Wed, 29 Nov 2023 02:49:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E79F20268DC
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 02:49:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D11D8556F3
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 02:49:51 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-517-Vgm47Xd9Nou4WsL5Iqg4Ug-1; Tue,
 28 Nov 2023 21:49:49 -0500
X-MC-Unique: Vgm47Xd9Nou4WsL5Iqg4Ug-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 9B47D44FC7;
	Tue, 28 Nov 2023 21:49:48 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 62ED61001B4; Tue, 28 Nov 2023 21:49:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 5FBE010008B;
	Tue, 28 Nov 2023 21:49:48 -0500 (EST)
Date: Tue, 28 Nov 2023 21:49:48 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chevelle <cstrobel@crosslink.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Brave, or new browser projects and the command line?
In-Reply-To: <4345ec30-0e29-4dd3-a40d-e24dfbc41aa7@crosslink.net>
Message-ID: <Pine.LNX.4.64.2311282148230.3704170@users.shellworld.net>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
 <aaa51ae5-e06a-499f-aefa-462bc17e1ac3@mail.com>
 <Pine.LNX.4.64.2311281652250.3701114@users.shellworld.net>
 <4345ec30-0e29-4dd3-a40d-e24dfbc41aa7@crosslink.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-2059589249-1701226188=:3704170"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-2059589249-1701226188=:3704170
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

If I follow, are those text examples on the  browsh homepage?



On Tue, 28 Nov 2023, Chevelle wrote:

> =C2=A0=C2=A0=C2=A0 I've never tried it, but the browser called Browsh cla=
ims to support=20
> JavaScript.=C2=A0 It apparently uses a version of Firefox and renders the=
 output=20
> in text.
>
> https://www.brow.sh/
>
> On 11/28/2023 4:54 PM, Karen Lewellen wrote:
>>  Yes, but that is my fault.
>>  Fastmail wants to improve their web interface.
>>  brave is one browser they list, but they realize gui browsers can prese=
nt
>>  challenges.
>>  So, I was wondering if there were additional tools that=C2=A0 like Elin=
ks can
>>  when=C2=A0 compiled=C2=A0 blend the best of both worlds?
>>=20
>>=20
>>
>>  On Tue, 28 Nov 2023, john doe wrote:
>>=20
>> >  On 11/28/23 22:04, Karen Lewellen wrote:
>> > >  =C2=A0Hi everyone,
>> > >  =C2=A0what is feeding the question is that the development team at=
=20
>> > >  fastmail is
>> > >  =C2=A0rather stunned that they have dropped access so completely.
>> > >  =C2=A0Future testing with lynx, links, and elinks, is=C2=A0 intende=
d, but they
>> > >  =C2=A0reference a new browser, brave that I=C2=A0 have been asked t=
o raise=20
>> > >  here.
>> > >  =C2=A0does it come with Linux builds currently?
>> >=20
>> >  https://brave.com/linux/
>> >=20
>> >  Am I missunderstanding the point of this thread.
>> >=20
>> >  --=20
>> >  John Doe
>> >=20
>> >  --=20
>> >  You received this message because you are subscribed to the Google=20
>> >  Groups "blinux-list@redhat.com" group.
>> >  To unsubscribe from this group and stop receiving emails from it, sen=
d=20
>> >  an email to blinux-list+unsubscribe@redhat.com.
>> >=20
>> >=20
>
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
>
--1949452079-2059589249-1701226188=:3704170--


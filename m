Return-Path: <blinux-list+bncBCVPTHE7K4IPVR6SWIDBUBF7AWJBM@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8AE8D05BE
	for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 17:17:16 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43fb2835731sf36576961cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 08:17:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716823035; cv=pass;
        d=google.com; s=arc-20160816;
        b=bgG9d5i4VYPlDMc1nkBtiKps3q/vVnyuLbcvAf5goiegraOyE9ToXNZPjVhUQ0VBhD
         CT/4Tc6OEsFnl7uqDWqURwnbuK1SPDYc9ghWNJ1ZtqT68nSik3Bj7sH0UMDZOL0Ue6Y6
         uTbfqimhaalpLaSzu7B5gU9a9JhN4HLjne1EmYR+zUPsBgdy+fMOXIrZny4B752Jcbqk
         kcp60VwrCJ8wldSIYF7ExB0xDOe6AVFkzTpochDUVieZ/2xdpNWqjjYxz4SWYFRB1gct
         w+xJtJwMuNPcaOvY9SVlddkpONaaygU+PxNzro9keOlFFRApOMnJQeGFniiWWcIa1XwH
         XcuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=E+tpQl7oJMAzYxDTXiocdUiB7/09DFdxJAO3vXaRI6c=;
        fh=kWthlSea8M4zWsRdjfSaTlWobbXVR3E0rOfPVFUtEx8=;
        b=jU15zjw35HPqj2NCllxGeTViaFpdfGwazYh3iIj8+omGgM7s/K9RMLn+OhmdXHItIy
         RvhAjsA+u5+cdKIObJOmCieyOXWSnRvJpsyUVs4L/lyLDWFFarOo/lTv853Rsc24251D
         5BnOPgcsllDRtHrJMkHVFhaKer/XHYwq4HazneDfbl8xNq2vvekeHWmxktXvYnMuYKXB
         ZkhNxkSzDuEsg9k/qE9WqmC9sAWUHNiktzkHfkAx5TOBStpMVbJKqZCEi+BD7Os+/CXv
         /U38PdFsCSHU0FBt6Ty7RmQqR2ZIXMiZOFQEwX3nW0wzW3GgtsOH6z2dFSePnAlVHtbc
         npPA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716823035; x=1717427835;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E+tpQl7oJMAzYxDTXiocdUiB7/09DFdxJAO3vXaRI6c=;
        b=ZDpq+VeR7p+o+PJRZGbDUPHvg+NJdwfOp8rRU+dpz4GiUhxC93HoC/g+4IbsKMSQKD
         dR9Xgez17Dz42DjHKxBIBL2PSHVAH0ZTzFzdw2pbR5J4XgnClY8DsuVi2nNCf+51Qwf9
         RuGMnMD6svow4RHYlm584mzWHxJGM8aD1Cz7rLgxCRjg7jLRsnmbXyBOJrr8YbA6a0cY
         7XthIW+fh1uGSX/NFbLNRKMTSx5pH8Hu69vZQ4vsys4a1Yu+uAZdF+aPgQ9hvJ0LwKlx
         +AGU/rx1gv5TeP2qoLjF2ufoyLJNl61+NQ2kdFVy3jt+/vtvS4eQZdpIAoMXv0nTVmQA
         HbSA==
X-Forwarded-Encrypted: i=2; AJvYcCWRxnwql4kA9bNJ3TZZGTLSmEaiEb3z8i+L/XluiF5dv0eKH6WtJPWOjqccnv0V5TzA5X5G9uBr2T/ODk8DnNYcj9ZbN9gQZxk0
X-Gm-Message-State: AOJu0Yzb/Ux2hw9MPPGpvJ+PUHLCnDXdXBCCJTk7c6h25SAA0jPCoOcQ
	NbhArKP4M1TjtkIoFaEdUJ3AJJFeab79keThRZJ0FTn4rKNFlPBKw6a3Xejkg38=
X-Google-Smtp-Source: AGHT+IFjHOOAnZN8hbo6GXKID2oL1oXRBipFDIbwLcdyiCPzKjK4UHTiHQ9WV2CsWjCZNG/K18RiNw==
X-Received: by 2002:a05:622a:591:b0:43a:cc86:568d with SMTP id d75a77b69052e-43fb0e8f674mr125102551cf.23.1716823034887;
        Mon, 27 May 2024 08:17:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1988:b0:43a:9717:34db with SMTP id
 d75a77b69052e-43faf014a50ls40596621cf.1.-pod-prod-05-us; Mon, 27 May 2024
 08:17:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWHRjapbArFgVi7PHwOdUmhXMYuNle/jfQAKFmy2Wk8xNdC6o0AvApEIVpM1yD0FC3E40ADUGjLZSZK/tkDDWh9QvRKHmThVLK4vkI3
X-Received: by 2002:ac8:5a81:0:b0:43d:f37a:dbe9 with SMTP id d75a77b69052e-43fb0e8f01emr106595491cf.15.1716823033576;
        Mon, 27 May 2024 08:17:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716823033; cv=none;
        d=google.com; s=arc-20160816;
        b=0KuIqiKw6ZzDpQBK9VUKAl9SseyEVdUoXCLpLZqaoaZJuvQVr7Dgw6FGy2EqPdt9kV
         otL6HhA0G8A2vhCcYllv75uR28IJ7McVgZQ3pxMZzKHFM+3B+1RZGYEPE9Nfwcx1td2I
         dGEZzFkKTtgBIJwfnP7bXMChy2t+Wx7hJU4jv9Gav4GSaNl6guEW/eKxS6VfycfmjmJS
         wGv1dRFoH+cBjrDaNLCgFnwHFFAFb4ncbPoDkbHVkCfOawuUhVnpU6GxwOVEfuHqGEp3
         izLsdWLH49wg6yEfbTJVledfIGDUo6HR6wHwjvdMwAStSXwfI+/EchnFTQDJvntgBauR
         dx6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=E+tpQl7oJMAzYxDTXiocdUiB7/09DFdxJAO3vXaRI6c=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=ZlIKEg+xx4pFUetlmvTHzx9AUeOrVhOIClXhsQ+sctRCSvZkVFCXQgGA2wnVKImPvp
         IyKJ8Cx3xW6Tw8SA6zKS0AOID48W29Hh87jKiQ64FZaS0/SZ+DNJGLTy4nfdRqubaGuv
         LV1shHRh5HSNPMNjRVoJVaPIu3OxOk9Tu6TmoYrHVcWc7mQl4EzvqWu2c714EU1y8Vi0
         rB9+TJsoFPcXoHWehTFQDuR1f2f5aOVcIJmONKooVrmpMrQarijVkhX1f6DWSI9IexPN
         dmQfmJ0uG9FrF4XgJbM3x+MBku04omdbNLHp5O3gIiUWSp4cB8KdID4SKervIaZGtsM6
         kcPQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-43fb17ed3f9si82599581cf.198.2024.05.27.08.17.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 08:17:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517-fmmk-2LFOUCdmxSADTZHKw-1; Mon,
 27 May 2024 11:17:11 -0400
X-MC-Unique: fmmk-2LFOUCdmxSADTZHKw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 640921955D84
	for <blinux-list@gapps.redhat.com>; Mon, 27 May 2024 15:17:10 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 548683000213; Mon, 27 May 2024 15:17:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 51CAC30000C4
	for <blinux-list@redhat.com>; Mon, 27 May 2024 15:17:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C881D1933EA2
	for <blinux-list@redhat.com>; Mon, 27 May 2024 15:17:09 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-689-toE3PGyZO2acRALA5COZNQ-1; Mon,
 27 May 2024 11:17:07 -0400
X-MC-Unique: toE3PGyZO2acRALA5COZNQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B8B3D4050A;
	Mon, 27 May 2024 11:17:06 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0DAB21000C3; Mon, 27 May 2024 11:17:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0C4F5100063;
	Mon, 27 May 2024 11:17:06 -0400 (EDT)
Date: Mon, 27 May 2024 11:17:06 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: getting BARD 2.0  to work with lynx on Linux
In-Reply-To: <ZlSBlK5r9RWbf1d0@panix.com>
Message-ID: <Pine.LNX.4.64.2405271111380.2449385@users.shellworld.net>
References: <ZlPijW01gZgptZTU@panix.com> <Pine.LNX.4.64.2405262206320.2441188@users.shellworld.net>
 <ZlSBlK5r9RWbf1d0@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

That is interesting.
When I first tried to walk through these steps, I had no issue with lynx 
at all.  I did notice  that the indicated government privacy policy  was 
not provided.
So, I used the DOS build of Links the chain, which is actually on my 
desktop.
Good thing too, all of said privacy policy appeared, allowing me to agree 
and finish.
granted Its not a service I can actually use, but I am required to keep 
the thing active as part of the overseas part of my nls qualification.. 
never mind the double standard.
Kare



On Mon, 27 May 2024, Rudy Vener wrote:

> There is, but it isn't saved to disk and I didn't want to change it every time I visit bard.
>
> On Sun, May 26, 2024 at 10:10:14PM -0400, Karen Lewellen wrote:
>> Most interesting Rudy.
>> I wonder if there is an options menu  choice for this?
>> Personally,  very personally, I am profoundly   disturbs by the patron
>> double standard.
>> Bard users get to keep library books indefinitely.  Those who prefer, or
>> require physical cartridges  must return that same content..for a publicly
>> funded library.
>> How is that equal?
>> Karen
>>
>>
>>
>> On Sun, 26 May 2024, Rudy Vener wrote:
>>
>>> After testing the new BARD 2.0 interface on my Linux system (slint v 15.0)  using lynx, I
>>> had a few bad hours when access was denied with a cookie error message.
>>>
>>> I finally got BARD 2.0 interface to work with lynx, but had
>>> to change the cookie version to do so.
>>>
>>>
>>> To save others future anguish, here's what I did.
>>>
>>> 1. cp /etc/lynx.cfg to ~/.config/lynx.cfg
>>> 2. vi ~/.config/lynx.cfg
>>>  copy the line:
>>> #COOKIE_VERSION:RFC-6265
>>> and edit it to:
>>> COOKIE_VERSION:RFC-2965
>>> 3. In a script file you can name bard or whatever suits your fancy, call lynx as follows:
>>> lynx -cfg=~/.config/lynx.cfg  https://nlsbard.loc.gov
>>>
>>> At some point BARD might fix their cookies to work with the default cookie version. Then again, they might not.
>>>
>>> --
>>> Rudy Vener
>>> Website: http://www.rudyvener.com
>>> Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
>>>
>>> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>>>
>>>
>>
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
> Need a Limerick Fix? Visit https://limerickdude.substack.com
>


Return-Path: <blinux-list+bncBCFIHJ744YGRBDE7UOVQMGQEACFPQDQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7A17FF90C
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 19:08:14 +0100 (CET)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-5d336b082f0sf17140957b3.1
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 10:08:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701367693; cv=pass;
        d=google.com; s=arc-20160816;
        b=sG6/1YFQR9zBAkyI8ObKnTwwQ76PvJUCJKegsipISm4FGJPX68m1rrBFKCsLUiAVgI
         JeKKT9ozSIVnTPzySFuc3fe68T8YSQrRajTDaIesG7zkIoM32GkIbrZkqBEZkhyVdhRS
         TDy86CKdWC7TMCCmG4txpPbQ8aHNRKPIChVmnIo30AoHXdCLDL+uakM8K0aBlmvXn4yz
         VRkjB1rIAu5KCHssXKf0vDN9syhHaE7xbeXMw6g2eG47ScUP/MYsPcheMHMWf2HSUAie
         Zva/w1YgyJ7T4WdgJqU1B7EKG58NFS1t0NqFHruOqf+4QwjJY4jdZrTpQWUx0jhUGbRT
         yaQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=rkOeoVnPUqVpec8rw85W5BFCQGd0gJ0qmYy1GMZYuc0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ftSaxzlMWi/p9GDb4aP/fxqLI/aAnlvWb+vSho1xOA0t/j+ydXjj2CLSmHsx4TheXV
         nxc9MaD5j7auaufkG/b2grnhNXT/UIz554GO7MA0mu740olTNXKc8HXH9bNtojyTAaBN
         ThpmalbkpToTvZyKFZ35Wdtre6AWIWI+u8vLwtNZ6TB5szuTnG58LfZ/FyFexa1gL5+O
         VdvbNQj4N8zIOrEVGFQTjclBsse8tLxJkdF6KKXqnKKnBeETJ6HyWWBQLodHbYn+JUfi
         i6FVkJyj0oQZnT5nCcGtlk7AlOIUzH3vusj7r8+M7+QnAXGSSM86XUmBtCOcjtQXPxPo
         ZIgg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701367693; x=1701972493;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rkOeoVnPUqVpec8rw85W5BFCQGd0gJ0qmYy1GMZYuc0=;
        b=Z+Wtv5KsS8CHsRefWoyQOWc+oO28yQENbw1qhfupeU5zSqsNV3QbGXqNDOyyzaW8V4
         J+T3uk+Hc6CsNhwUsE1wW/WDcnSkXBDSsUjhpnHUHTFs4ueFCfucYvvhBz8/eeLiyJm/
         JDxeobxUbeowiTHW3SPOmOrEW0aa8dm0qs/GDohLGFGVGhw7RSb/IyUP7+xvYlOhnqnH
         oznkQs1S0Ya/yTJz4USZySUB/UFNsiGF1ZE9PFa3Z8vlWw+fbATtghuHMfjkcugyZSog
         sqDhY7R3isS+6MrpI9W4whdAPQUb+FIt0FSeJ3UADDJi1ee5Au8/jKHLze3NpyCnH6ub
         ScFw==
X-Gm-Message-State: AOJu0Yzzs65gJox2xQ9GNaCwXFe0ic+R2p45E1qFA+0qBFhxtGhWA0Sk
	4WvgUFDw3/fNDiFrg2afv87Okg==
X-Google-Smtp-Source: AGHT+IHob9iBoGGmidwRpK5f2QNmhrin93yISg7FQ9QfEk4qnVanEKrtBI0jBQ4lVmm/12u5thYeZA==
X-Received: by 2002:a5b:20c:0:b0:daf:b23c:8619 with SMTP id z12-20020a5b020c000000b00dafb23c8619mr21190896ybl.51.1701367692815;
        Thu, 30 Nov 2023 10:08:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:d1d7:0:b0:da0:cfa1:5bbc with SMTP id i206-20020a25d1d7000000b00da0cfa15bbcls1636231ybg.1.-pod-prod-08-us;
 Thu, 30 Nov 2023 10:08:12 -0800 (PST)
X-Received: by 2002:a25:3447:0:b0:db5:395c:c84c with SMTP id b68-20020a253447000000b00db5395cc84cmr3049362yba.46.1701367691841;
        Thu, 30 Nov 2023 10:08:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701367691; cv=none;
        d=google.com; s=arc-20160816;
        b=hzCDzqjA0o9eZNBEds13EtwKcokJZE4CTjoaLYR9N6Tf4GQZbIYLKi1+8jzA57gpgU
         KjPWX+z30nvzGKlbjuPZV4TQy7367WdUmkec2qc0njS2pohjx2KXjlJAuGmRC3CjRkp/
         aOKoi77HChUZSpjM44qUamfAxwmPIeYJHBxWbZmOxWqtwyC/2idjeuShVHUWO3/Y27cP
         5GcBu8/+Yb1PiCmVIqAlmyVsjVNK2Buqq7c7qK9vh01M3tvS+i6IyPKY6pOG0VoLSo0n
         lHdYV+C7b/NvKTs5yXRstzkcjz6ay8vhJt5AECdTxnR38ETZ7hG97TcGOAsM27YvGMZd
         RIVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=SJ+shGoWbqWAkQvBHYAWp8ZJqtP5/H2vrfZrVSiMYxY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=EkeGYSlRx4UbrOMCCjPjnd9DrUv8OuD2aFfNVlUxE1vQsUbpOnieItlwglfkioRZJI
         1w5nHigvvd42R3z0OTUJbsXW+gbUhCR1WEcShaCnkUZySXq6cqHyWc9ZCYmYAgkoUHDb
         37C0vFZY1Q8N5xdKBu6dsxKboJ83sYQNuh+LriVsjb64AH8WWy49iS7/8+Olm6Eg42Mg
         giFgwnGtJj6KS94jkkUDOQFgPCjf90OCILtsxmOnHJeEnmMUNL7FsnoZJNIvAcQ7H/E6
         U+VxpK1KanRb8mdVe49BbxXrMWzaeVKVE6qQgim85rY7dJuQ+kbhhcDHsdNqng7jTF4X
         9m5A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id t31-20020a252d1f000000b00da05787ef25si912782ybt.689.2023.11.30.10.08.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 10:08:11 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-FSFiEDKNNze7wBKuXUlaEw-1; Thu, 30 Nov 2023 13:08:09 -0500
X-MC-Unique: FSFiEDKNNze7wBKuXUlaEw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55E4989F9E0
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 18:08:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5256640C6EBA; Thu, 30 Nov 2023 18:08:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B97640C6EB9
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 18:08:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30271811E7E
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 18:08:09 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-696-dp57tPgdP9-HNj14Rfo8Yg-1; Thu,
 30 Nov 2023 13:08:04 -0500
X-MC-Unique: dp57tPgdP9-HNj14Rfo8Yg-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 81be2bfe
	for <blinux-list@redhat.com>;
	Thu, 30 Nov 2023 18:08:03 +0000 (UTC)
Date: Thu, 30 Nov 2023 12:08:03 -0600
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: links the chain stinks!
Message-ID: <ZWjPg-tVZIb01DTx@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
 <ZWi9fsW48rqdh_os@thechases.com>
 <4c9524e6-3b94-f825-6fdb-bdb2997e5bb4@hubert-humphrey.com>
 <ZWjLX2UX4dsyL1C-@thechases.com>
 <Pine.LNX.4.64.2311301258100.3728928@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2311301258100.3728928@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

I use the slash key to find too, but often I find the "next/previous
link/form-control" navigation useful.

As one who touch-types, I'd prefer to keep my hands on the home-row,
and using tab (or occasionally shift+tab) let me do that.  Even
better, the "j" and "k" VI keys let me do that in lynx-the-cat when
I have VI keys enabled.  But as far as I can tell, links-the-chain
doesn't offer either.  So to navigate that next/previous, I have
to move my hands from the home row over to the arrow key-cluster.

-tim



On 2023-11-30 13:00, Karen Lewellen wrote:
> Not sure what the goal would be.
> if I want to find something I use the slash find  feature.  takes me where I
> wish to go on a page.
> i do not believe I have ever used tab or shift tab to navigate anywhere.
> 
> 
> 
> On Thu, 30 Nov 2023, Tim Chase wrote:
> 
> >I wish I knew how to make Tab & shift+Tab work like in other browsers.  The up/down arrows navigate the links/fields, but I wish I could either use tab or the VI keys (j & k) to navigate.  Ah, well.
> >
> >-tim
> >
> >
> >On 2023-11-30 09:07, Chime Hart wrote:
> >>Well, thank you Tim, that works, and it seems to stay, but now can I make
> >>the tab work like in other browsers-and-platforms? Thanks in advance
> >>Chime
> >>
> >>--
> >>You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> >>To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >>
> >
> >-- 
> >You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >
> >
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


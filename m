Return-Path: <blinux-list+bncBCVPTHE7K4INPIENWADBUBFFYAMAM@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 5004888D17D
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:46:50 +0100 (CET)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-dc6b2682870sf9734550276.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:46:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711493209; cv=pass;
        d=google.com; s=arc-20160816;
        b=AyxUB/jIJNdy/QT4fHuc+zd5qdRvttCr/xSjugjKCjMXlLwYW+WlWtZYSlX+rf/E5W
         ZtgsPAEGPNKzE1/UPpezVU0NpAMOPtY4oafg4UJVTOb53/OQsiYShIYuvjpaHoAPW3hr
         RraHyy1hC0C9bjcADpEgZ5MJk581N1DMuRS+Zhi3wUsJ/9lnS+ksiGG2IN2ckkhhM0R/
         PUiFw2VeaKMnf1/KgJX1AaoEeMzMKSCOUgS/KJLD7jH/49nYq9L41EIGm0UtJXE2BVcC
         MziBModJNHUf54DLj/+QleZSKcqY8KvWuxRr+Qgvx1z6OXhHWlWsXGDbJ1gzuSU14tx/
         JRbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=903u/HlAJZRuWmgToq0+YvO9ia3WlSZ2y2D5syODPN0=;
        fh=U0OCD/ZY5dUfJlHoB+cS2R/ZXBRySzN+pBzXFI8eca0=;
        b=SoTmHJq3XzyNa0VVqNwKPq7aEwfYS8Ojkk7safA/63AsMjSy4WjHm2fR3n3WUkbz1S
         SZhMWjTRfOow9lQK6r13sMZDaRIbv2I1lc4I8N0pkPbbe9uZfRvSOn2yEDHjm2qikQCh
         Tu0pKjzgTQgH9lSpAL7hU30NqB8dxV5YvgYz1MfxEydTbQcrBrSxN2LGD4bio4ZgOSjC
         fYeYHep4CLCZb44P3l4mrHW202LAUdv0Ph9K9+mCAJiGep3qq4IKwX+I7W+eb5dCLVfm
         BnWPGp4v7y7gFIye/EYzexHEON+AYwPe+fyvbaSDYLRI9/0SbGyDpVofMhudlNYuewEi
         MmTw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711493209; x=1712098009;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=903u/HlAJZRuWmgToq0+YvO9ia3WlSZ2y2D5syODPN0=;
        b=fmyuje/q9KUEnXzrKNuQZH5fQI6QXY1DZZj6gHIn+wPxr4iTWbQKwt+xkMPL+sr1wv
         jFK5xeSSymqjFufYzw+P1ZobzGmfUmy5kR6DORV/u8zUi6DB77JG+uDgjm9Cpo8q3hKz
         PCVJMcSLjA6evLdV6ZQFRmcgVRgVmdXeNkld9USRbmxeeO4FO+BOkRba/TnTATTbtuHh
         vkeKqdG+jFq0EQIt4FEt7vwsijNlzDBHMI/KzMNEajoPxJmNAfc3RkdCDGycZQHe6xei
         ujkY9ysKABDMNRBmV5QamSGWOKrgbiOijv/54kEF4NeTmRfNgfLaPjOMnPAFlnXqIqrU
         msSg==
X-Forwarded-Encrypted: i=2; AJvYcCVUbCGi3zmG1GteWRPFd2UN/YYfJyYsGtcarmoroV+rnSwGvhDd1y0rCykIuANXY67p7jZmrvxCXvYGQCr+1Vmn46Cskk9oKQ8r
X-Gm-Message-State: AOJu0Yy+EVomPbS+DwhHasdMRIQ42YB5lcSpZH7CVwIJokvOXAdgDmIx
	UVjpzBCe0EJEUWXC9XALdvIj4y8bA117IsH3CMxNPOjM/FHV4wr1Etr/lGxf2/Q=
X-Google-Smtp-Source: AGHT+IHLIG/9RFaCmFGAMgFaRAHFNVoDKv0osZipOew5Tb5GvEsmh64Vgl47QE/Q/uFj2zQmiRfD1g==
X-Received: by 2002:a25:8388:0:b0:dc7:5a17:6c3 with SMTP id t8-20020a258388000000b00dc75a1706c3mr8893110ybk.53.1711493209039;
        Tue, 26 Mar 2024 15:46:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:cc3:b0:696:9190:cd48 with SMTP id
 3-20020a0562140cc300b006969190cd48ls4001324qvx.1.-pod-prod-07-us; Tue, 26 Mar
 2024 15:46:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXwQI2tCZrR6TKemqxBNQuyZnbS52AZMXrUECc9sk1xOK6Yo11LnnCqbrZrTOwsWR3u7anqVbGtKmbQZ1Zi3xNv63RZbBmc/a3fkqew
X-Received: by 2002:a05:6102:350:b0:474:d382:1cbe with SMTP id e16-20020a056102035000b00474d3821cbemr9241798vsa.16.1711493207333;
        Tue, 26 Mar 2024 15:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711493207; cv=none;
        d=google.com; s=arc-20160816;
        b=rp9XXd/YQOM+FrKcevzXcKIbqvFmyPDnlYN7Hyc0UQVlW6UxsR3iSEWaHDXX/JvicU
         h5KF1lPSID+UKLfb1Ffx0XtDjaLovNyPBOOer/Q6fAMHkfh5JTyZDm4xUrh9tUm/Wkja
         lb8iObAanGvXt409Y9NlPOIR2NRFWsi7Z0d6X0KLLUgtUAR7mqaIs5QtIVdq3oGOYZ7P
         /g1Gog1j0r43oxgyPFgfe9wwn2CrF1xi6I8ISulBb+UlQfiPtL04KeSN9APty5elcMSz
         xN0vyt/OvH/PrIU+rRBf48iBDjFmTYV4Yk0vShF/CsTGVVve8P8XHtXC5tn5ZmmQb7+F
         bJVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=903u/HlAJZRuWmgToq0+YvO9ia3WlSZ2y2D5syODPN0=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=GNw8ZTdfFzve3ZOH0ZIvNwCa7sX0Mo+13zqF37fV43TcDK1H7UvwIH65gYigd8Avcv
         eS+rPjhB19FpLhxUg2w2aohKS5A3P+yzdCPR8Vg6Gj9lx1D6tfbQ+xKbqqFcH99ucU0C
         anpBRLBpcCdHSjI36CGDUfd6kVi7dgDb0aBuWc7yBQldbkJWpNWOdWqmFgcAapP2koLb
         vtvduAhS/65yB41lYWoNWVOLNIplMzEx/Qi/9f33kCGa8ETrDRuWntfcXzv9G51jIfZw
         t6fJJIdtcUugDRaelnOqlD12u6kH9Wx2KIDGK2nR7GyncZf9KqxlXRW+m4v92yGqlkQ5
         9WYg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id l8-20020a05620a0c0800b00789fdd09e15si8437513qki.444.2024.03.26.15.46.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:46:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-241-q4ifRjCYPiaf0oXHswLDhQ-1; Tue,
 26 Mar 2024 18:46:44 -0400
X-MC-Unique: q4ifRjCYPiaf0oXHswLDhQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 256FB2932486
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:46:44 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 21E6E2166B32; Tue, 26 Mar 2024 22:46:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCF9A2166B31
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:46:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 866BF1C0418F
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:46:43 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-184-0xal3RQ0O3mSGC4YD12Ypw-1; Tue,
 26 Mar 2024 18:46:38 -0400
X-MC-Unique: 0xal3RQ0O3mSGC4YD12Ypw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2B82440508;
	Tue, 26 Mar 2024 18:46:38 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id ECF671001AD; Tue, 26 Mar 2024 18:46:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id EB99010007F;
	Tue, 26 Mar 2024 18:46:37 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:46:37 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
Message-ID: <Pine.LNX.4.64.2403261845530.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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

Thanks Jude,
Sure that will be informative.



On Tue, 26 Mar 2024, Jude DaShiell wrote:

> https://opensource.com/article/20/1/open-source-reddit-client
>
>
> -- 
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Mon, 25 Mar 2024, Karen Lewellen wrote:
>
>> Hi All,
>> previously, reddit worked well,  at least for reading posts, in both lynx the
>> cat and links the chain.
>> Now, even elinks produces a blocked error message, my guess is that the reddit
>> community is not aware of Linux and these tools for access.Wondered though if
>> another tool already exists that might be a part of a shell infrastructure?
>> With appreciation,
>> Karen
>>
>>
>>
>

